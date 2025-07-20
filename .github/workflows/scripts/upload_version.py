#-----------
#  Imports
#-----------

import sys
import os
import json
from zipfile import ZipFile
import zipfile
import requests
import hashlib as hashlib

#---------------
#  Global Vars
#--------------

version_tag = ""
modrinth_pat = ""
curseforge_pat = ""

all_minecraft_versions = [
    "1.21.8", "1.21.7", "1.21.6", "1.21.5", "1.21.4", "1.21.3", "1.21.2", "1.21.1", "1.21", 
    "1.20.6", "1.20.5", "1.20.4", "1.20.3"," 1.20.2", "1.20.1", "1.20", 
    "1.19.4", "1.19.3", "1.19.2", "1.19.1", "1.19", 
    "1.18.2", "1.18.1", "1.18", 
    "1.17.1", "1.17", 
    "1.16.5", "1.16.4"," 1.16.3", "1.16.2", "1.16.1", "1.16", 
    "1.15.2", "1.15.1", "1.15", 
    "1.14.4", "1.14.3", "1.14.2", "1.14.1", "1.14", 
    "1.13.2", "1.13.1", "1.13", 
    "1.12.2", "1.12.1", "1.12", 
    "1.11.2", "1.11.1", "1.11", 
    "1.10.2", "1.10.1", "1.10", 
    "1.9.4", "1.9.3", "1.9.2", "1.9.1", "1.9", 
    "1.8.9", "1.8.8", "1.8.7", "1.8.6", "1.8.5", "1.8.4", "1.8.3", "1.8.2", "1.8.1", "1.8", 
    "1.7.10", "1.7.9", "1.7.8", "1.7.7", "1.7.6", "1.7.5", "1.7.4", "1.7.2", "1.6.4", "1.6.2", "1.6.1"
]

#----------------
#  Get all args
#----------------


arg_cnt = len(sys.argv)

#Yay magic numbers!
if(arg_cnt > 1):
    version_tag = sys.argv[1] #The name of the release tag EG: V2.5.0b-mod-for-1.21.6-1.21.7
else:
    sys.exit("No tag name!")
if(arg_cnt > 2):
    changelog = sys.argv[2] #The changelog
else:
    sys.exit("No tag name!")
if(arg_cnt > 3):
    modrinth_pat = sys.argv[3] #My modrinth token
else:
    sys.exit("No modrinth PAT!")
if(arg_cnt > 4):
    curseforge_pat = sys.argv[4] #My curseforge token
else:
    sys.exit("No curseforge PAT!")


#---------------------------
#  Parse tag into versions
#---------------------------

#-----------VARS-----------

pack_version = ""
start_version = ""
end_version = ""
all_versions = []

#-----------CODE-----------


#-------------------------------------------------------------------------------------------------------------------------
#When uploading a mod version, it should not be uploaded to modrinth / cursforge again so stop
if ["mod","no-upload"] in version_tag:
    sys.exit("This version is configured to not upload. Stopping script...")


# Split the tag into the seporate parts

tag_parts = []
#-------------------------------------------------------------------------------------------------------------------------
# Get the pack version and game version
def split_tag(tag):
    global pack_version
    global start_version
    global end_version

    tag = tag.lower()
    split = tag.split("-for-")
    pack_version = split[0].strip("v")
    
    game_versions = split[1].split("-")
    start_version = game_versions[0]
    end_version = game_versions[1]
#-------------------------------------------------------------------------------------------------------------------------
def version_to_int(version):
    version_numbers = version.split(".")
    digit_count = len(version_numbers)
    number = 0

    #add support for versions like 1.21 intead of 1.21.5
    if(digit_count == 1):
        version_numbers.append(0)
        version_numbers.append(0)
    if(digit_count == 2):
        version_numbers.append(0)

    index = 2
    
    for digit in version_numbers:
        number += int(digit) * pow(100, index) 
        index -= 1

    return number
#-------------------------------------------------------------------------------------------------------------------------
def interpolate_versions(start, end):
    global all_versions

    start_version_int = version_to_int(start)
    end_version_int = version_to_int(end)
    
    for i in all_minecraft_versions:
        if(version_to_int(i) >= start_version_int and version_to_int(i) <= end_version_int):
            all_versions.append(i)
#-------------------------------------------------------------------------------------------------------------------------
      
print(f"Version Tag: {version_tag}")
split_tag(version_tag)
print(f"Pack Version: {pack_version}")
print(f"Start Version: {start_version}")
print(f"End Version: {end_version}")
interpolate_versions(start_version, end_version)
print(all_versions)

#-------------------------------------------------------------------------------------------------------------------------


#---------------------
#  Zipping The Files
#---------------------


#-------------------------------------------------------------------------------------------------------------------------
# F*ck python man, I mean what is this sh*t lmao. It's not a slide or smth
def zipdir(path, ziph):
    # ziph is zipfile handle
    for root, dirs, files in os.walk(path):
        for file in files:
            ziph.write(os.path.join(root, file), 
                       os.path.relpath(os.path.join(root, file), 
                                       os.path.join(path, '..')))
            
# and yes I've made it purposefully worse...
#-------------------------------------------------------------------------------------------------------------------------
print("Zipping datapack...")

datapack_path = "ancient_artifacts_datapack_v" + pack_version + "_for_" + start_version + "-" + end_version + ".zip"

with ZipFile(datapack_path, "w", zipfile.ZIP_DEFLATED) as myzip:
    zipdir("datapack/data", myzip)
    myzip.write("datapack/pack.mcmeta","pack.mcmeta")
    myzip.write("datapack/pack.png","pack.png")

#-------------------------------------------------------------------------------------------------------------------------
print("Zipping resourcepack...")

resourcepack_path = "ancient_artifacts_resourcepack_v" + pack_version + "_for_" + start_version + "-" + end_version + ".zip"

with ZipFile(resourcepack_path, "w", zipfile.ZIP_DEFLATED) as myzip:
    zipdir("resourcepack/assets", myzip)
    myzip.write("resourcepack/pack.mcmeta","pack.mcmeta")
    myzip.write("resourcepack/pack.png","pack.png")

#-------------------------------------------------------------------------------------------------------------------------


#----------------------
#  Upload to modrinth
#----------------------


#-------------------------------------------------------------------------------------------------------------------------
def upload_to_modrinth(dp_path, rp_path, pack_version, changelog, game_versions, start_version, end_version):
    api_url = "https://api.modrinth.com/v2/version"
    project_id = "RO3LwIqV"
    dp_name = "Ancient Artifacts 2 Datapack V" + pack_version + ".zip"
    rp_name = "Ancient Artifacts 2 Resourcepack V" + pack_version + ".zip"

    file_parts = [
        "datapack",
        "resourcepack"
    ]

    file_types = {
        "datapack": None,
        "resourcepack": "required-resource-pack"
    }

    payload = {
        "project_id": project_id,
        "version_number": pack_version,
        "version_title": f"Ancient Artifacts 2 V{pack_version} for {start_version}-{end_version}",
        "version_body": changelog,
        "dependencies": [],
        "game_versions": game_versions,
        "loaders": ["datapack"],
        "release_channel": "beta",
        "featured": True,
        "file_parts": file_parts,
        "file_types": file_types
    }

    form_data = {
        "data": json.dumps(payload)
    }

    files = {
        "datapack": (dp_name, open(dp_path, 'rb')),
        "resourcepack": (rp_name, open(rp_path, 'rb'))
    }

    headers = {
        "Authorization": modrinth_pat
    }

    print(files)

    response = requests.post(api_url, headers=headers, data=form_data, files=files)

    print("Status code:", response.status_code)
    print("Response:", response.text)

    # close files
    for key, (name, file) in files.items():
        file.close()
#-------------------------------------------------------------------------------------------------------------------------


#-------------------------
#  Upload to curse forge
#-------------------------


#-------------------------------------------------------------------------------------------------------------------------
# Convert the game versions (like 1.21.6 or 1.18.2) into an id curseforge uses (like 12281)
def get_cf_game_versions(game_versions):
    api_url = "https://minecraft.curseforge.com/api/game/versions"

    vanilla_minecraft = 77784

    auth_header = {
        "X-api-token": curseforge_pat
    }

    print("Retrieving game version numbers...")
    # Request all versions on curseforge (including fabric, forge...)
    response = requests.get(api_url, headers=auth_header)

    json_response = json.loads(response.text) # load the response list

    version_to_id = {}

    for dictonary in json_response:
        if dictonary["gameVersionTypeID"] == vanilla_minecraft: # Filter for only vanilla versions
            version_to_id[dictonary["name"]] = dictonary["id"]

    version_ids = []
    for version in game_versions:
        id = version_to_id[version]
        version_ids.append(id)
        print(f"Name: {version} | ID: {id}")

    return version_ids
#-------------------------------------------------------------------------------------------------------------------------
# upload a single file to curseforge with an optional parent file and return the file id
def upload_file_cf(path, parent, name, game_version_ids, changelog):
    api_url = "https://minecraft.curseforge.com/api/projects/1294584/upload-file"

    auth_header = {
        "X-api-token": curseforge_pat
    }

    metadata = {
        "changelog": changelog,
        "changelogType": "markdown",
        "displayName": name,
        "releaseType": "beta",
        "isMarkedForManualRelease": False
    }

    if parent:
        metadata["parentFileID"] = parent
    else:
        metadata["gameVersions"] = game_version_ids

    file = open(path, 'rb')
    files = {"file": (name, file)}

    data = {
        "metadata": json.dumps(metadata)
    }



    response = requests.post(api_url, headers=auth_header, data=data, files=files)

    print("Status code:", response.status_code)
    print("Response:", response.text)

    json_response = json.loads(response.text) # load the response list
    id = json_response["id"]

    file.close()

    return id
#-------------------------------------------------------------------------------------------------------------------------
# Handle the upload of both files to curseforge
def upload_to_curseforge(dp_path, rp_path, pack_version, changelog, game_versions, start_version, end_version):

    dp_name = "Ancient Artifacts 2 Datapack V" + pack_version + ".zip"
    rp_name = "Ancient Artifacts 2 Resourcepack V" + pack_version + ".zip"

    # Upload the datapack
    parent_id = upload_file_cf(path=dp_path, parent=None, name=dp_name, game_version_ids=get_cf_game_versions(game_versions), changelog=changelog)

    # Upload the resourcepack as a child of the datapack
    upload_file_cf(path=rp_path, parent=parent_id, name=rp_name, game_version_ids=get_cf_game_versions(game_versions), changelog=changelog)
#-------------------------------------------------------------------------------------------------------------------------

print("Uploading to modrinth...")
upload_to_modrinth(datapack_path, resourcepack_path, pack_version, changelog, all_versions, start_version, end_version)

print("Uploading to curseforge...")
upload_to_curseforge(datapack_path, resourcepack_path, pack_version, changelog, all_versions, start_version, end_version)
