#-------------------------------------------------------------------------------------------
#     #########   ###########  ##       ##  ########  ##########  ##########   #######    
#     ##          ##       ##  ## ##    ##  ##            ##      ##          ##  
#     ##          ##       ##  ##   ##  ##  ######        ##      ##    ####   #######
#     ##          ##       ##  ##     ####  ##            ##      ##      ##         ##
#     #########   ###########  ##       ##  ##        ##########  ##########   #######
#-------------------------------------------------------------------------------------------

# This python script is used to automatically upload files to modrinth and curseforge
# when creating a release. The release-tag is used to get all information to build the files.
# Thus a specific format is required: v<pack_version>-<release_type(optional)>-for-<mc_version_from>-<mcversion_to>
# For example: v1.5.3-for-1.21.6-1.21.11 | v0.1.4-beta-for-1.20.1-1.20.6
#
# You can also add 'no-upload' anywhere in the tag to make sure the release won't get uploaded

# Run this file with CMD: Python3 <this_script> <the_tag_name> <your_modrinth_PAT> <your_curseforge_PAT> <your_curseforge_organization_key>
# MAKE SURE TO USE REPOSITORY SECRETS

# === GENERATE YOUR TOKENS ===
# Modrinth PAT:                 https://modrinth.com/settings/pats
# Curseforge PAT:               https://legacy.curseforge.com/account/api-tokens
# Curseforge Organization key:  https://console.curseforge.com/?#/api-keys

# Environments through the modrinth api aren't stable yet so I haven't added them (yet)

#------------------------------------------------------------------------------------------
#  If you're just using this file for your own project, you should only change these
#------------------------------------------------------------------------------------------

#-----FILES----

overall_name = "Ancient Artifacts 2"                                       # The name of the project (used for the version title)

enabled_dp = True
datapack_name = "Ancient Artifacts 2 Datapack"                             # The name of your datapack (used for the file name)
datapack_name_ascii= "ancient_artifacts_datapack"                        # The name of your resourcepack only containing ascii charracters
datapack_folder_path = "build/Ancient Artifacts Datapack"           # The location of your datapack starting from the root of the repo

enabled_rp = True                                                   # Wheter a resourcepack should be uploaded
resourcepack_name = "Ancient Artifacts 2 Resourcepack"                     # The name of your resourcepack (used for the file name)
resourcepack_name_ascii= "ancient_artifacts_resourcepack"                # The name of your resourcepack only containing ascii charracters
resourcepack_folder_path = "build/Ancient Artifacts Resourcepack"   # The location of your datapack starting from the root of the repo

#-----MODRINTH-CONFIG-----

enable_modrinth_upload = True                   # Whenever to upload to modrinth or not

modrinth_project_id = "RO3LwIqV"                # The project ID of your modrinth project

resourcepack_type = "required-resource-pack"    # Whenever the resourcepack is required or optional (when datapack and resourcepack are enabled). 
                                                # Can be one of: required-resource-pack | optional-resource-pack

#-----CURSEFORGE-CONFIG-----

enable_cf_upload = True                         # Whenever to upload to curseforge

curseforge_datapack_project_id = 1294584        # The project ID on curseforge for the datapack
curseforge_mod_project_id = 1342636             # The project ID on curseforge for the mod

mc_game_id = 432                                # The game id on curseforge for minecraft (leave this unchanged unless curseforge changed it somehow)

#-----MOD-CONFIG-----

package_as_mod = True                                                           # Whenever to package the pack as a mod

mod_name_ascii = "ancient_artifacts_mod"                                             # The name of your mod only using ascii charracter

mod_authors = [                                                                 # The authors of the mod
    "theblackswitch"
]

mod_home_page = "https://theblackswitch.com/datapacks/ancient_artifacts"        # A link to the home page of the mod
mod_source = "https://github.com/TheBlackSwitch/Ancient-Artifacts-2"            # A link to the source code
mod_issues = "https://github.com/TheBlackSwitch/Ancient-Artifacts-2/issues"     # A link the the issues
mod_description = "Unlock over 50+ artifacts with unique abilities"
mod_license = "CC-BY-NC-ND-4.0"

#------------------------------------------------------------------------------------------
# Editing the code below at your own risk :P  I tried to add some comments to make it clear
#------------------------------------------------------------------------------------------

#--------------------------------------------------------
#     #########   ###########  #########    ########   
#     ##          ##       ##  ##      ##   ##       
#     ##          ##       ##  ##      ##   ######   
#     ##          ##       ##  ##      ##   ##      
#     #########   ###########  #########    ######## 
#-------------------------------------------------------

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

version_tag = ""    # the tag value of the git release
modrinth_pat = ""   # user specifiv token (used to psuh any versions)
curseforge_pat = "" # user specific token (used to push any versions)
cf_api_key = ""     # organization specific key (used to get version data)

#----------------
#  Get all args
#----------------



#Yay magic numbers!

version_tag = os.environ["TAG"] if os.environ["TAG"] else sys.exit("No tag name!") #The name of the release tag EG: V2.5.0b-mod-for-1.21.6-1.21.7

changelog = os.environ["BODY"] if os.environ["BODY"] else sys.exit("No changelog provided!") #The changelog
    
modrinth_pat = os.environ["MODRINTHPAT"] if os.environ["MODRINTHPAT"] else sys.exit("No modrinth PAT provided!") # modrinth token

curseforge_pat = os.environ["CURSEFORGEPAT"] if os.environ["CURSEFORGEPAT"] else sys.exit('No curseforge PAT provided!') # curseforge token

cf_api_key = os.environ["CURSEFORGETOKEN"] if os.environ["CURSEFORGETOKEN"] else sys.exit('No curseforge organization token provided!') # curseforge organization key


if not enabled_rp and not enabled_dp:
    print('No folders found to upload...')
    exit()

#---------------------------
#  Parse tag into versions
#---------------------------

#-----------VARS-----------

pack_version = ""
pack_release_type = "release"
start_version = ""
end_version = ""
interpolated_versions = []

#-----------CODE-----------


#-------------------------------------------------------------------------------------------------------------------------
# Verify folder structure
if enabled_dp:
    if not os.path.exists(f'{datapack_folder_path}/data'): raise Exception('Couldn\'t find data folder in datapack!')
    if not os.path.exists(f'{datapack_folder_path}/pack.mcmeta'): raise Exception('Couldn\'t find pack.mcmeta in datapack!')

if enabled_rp:
    if not os.path.exists(f'{resourcepack_folder_path}/assets'): raise Exception('Couldn\'t find assets folder in resourcepack!')
    if not os.path.exists(f'{resourcepack_folder_path}/pack.mcmeta'): raise Exception('Couldn\'t find pack.mcmeta in resourcepack!')



#-------------------------------------------------------------------------------------------------------------------------
# Don't upload this specific release
for arg in ["no-upload"]:
    if arg in version_tag:
        sys.exit("This version is configured to not upload. Stopping script...")


# Split the tag into the seporate parts

tag_parts = []
#-------------------------------------------------------------------------------------------------------------------------
# Get the pack version and game version
def split_tag(tag):
    global pack_version
    global start_version
    global end_version
    global pack_release_type

    try:
        tag = tag.lower()
        split = tag.split("-for-")
        
        pack_version_parts = split[0].strip("v").split('-')
        pack_version = pack_version_parts[0]
        
        if 'beta' in split[0].strip("v"):
            pack_release_type = "beta"
        elif 'alpha' in split[0].strip("v"):
            pack_release_type = "alpha"

        game_versions = split[1].split("-")
        start_version = game_versions[0]
        end_version = game_versions[1]
    except:
        raise Exception(f'Failed to parse release tag: {tag}. It should be of the format <pack_version>-for-<mc_version_from>-<mc_version_to>')

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
all_minecraft_versions = [] # cache the response for some reason

def interpolate_versions(start, end):
    global all_minecraft_versions

    # Collect a list of all minecraft versions
    if len(all_minecraft_versions) == 0:

        response = requests.get(f"https://piston-meta.mojang.com/mc/game/version_manifest.json")
        if response.status_code == 200 and isinstance(json.loads(response.text)['versions'], list):
            for v in json.loads(response.text)['versions']:
                if v['type'] == 'release':
                    all_minecraft_versions.append(v['id'])
            print(all_minecraft_versions)
        else:
            raise Exception('Failed to collect minecraft versions!')


    output = []
    start_version_int = version_to_int(start)
    end_version_int = version_to_int(end)
    
    for i in all_minecraft_versions:
        if version_to_int(i) >= start_version_int and version_to_int(i) <= end_version_int:
            output.append(i)

    return output

#-------------------------------------------------------------------------------------------------------------------------

print(f"Version Tag: {version_tag}")
split_tag(version_tag)
print(f"Pack Version: {pack_version}")
print(f"Start Version: {start_version}")
print(f"End Version: {end_version}")
interpolated_versions = interpolate_versions(start_version, end_version)
print(f'Interpolated versions: {interpolated_versions}')

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
datapack_path = f"{datapack_name_ascii}_v" + pack_version + "_for_" + start_version + "-" + end_version + ".zip"
if enabled_dp:
    print("Zipping datapack...")

    with ZipFile(datapack_path, "w", zipfile.ZIP_DEFLATED) as myzip:
        zipdir(f"{datapack_folder_path}/data", myzip)
        myzip.write(f"{datapack_folder_path}/pack.mcmeta","pack.mcmeta")
        myzip.write(f"{datapack_folder_path}/pack.png","pack.png")

#-------------------------------------------------------------------------------------------------------------------------

resourcepack_path = f"{resourcepack_name_ascii}_v" + pack_version + "_for_" + start_version + "-" + end_version + ".zip"
if enabled_rp:
    print("Zipping resourcepack...")

    with ZipFile(resourcepack_path, "w", zipfile.ZIP_DEFLATED) as myzip:
        zipdir(f"{resourcepack_folder_path}/assets", myzip)
        myzip.write(f"{resourcepack_folder_path}/pack.mcmeta","pack.mcmeta")
        myzip.write(f"{resourcepack_folder_path}/pack.png","pack.png")

#-------------------------------------------------------------------------------------------------------------------------



#----------------------
## Create mod versions
#----------------------


# Merge the pack.mcmeta from the resourcepack and datapack together
def merge_pack_mcmeta(rp_folder, dp_folder):
    dp_mcmeta = {}
    rp_mcmeta = {}
    merged_mcmeta_json = {}

    # Ignore folders that don't exist
    if not enabled_rp:
        with open(f'{dp_folder}/pack.mcmeta') as f: # type: ignore
            return f.read()
        
    if not enabled_dp:
        with open(f'{rp_folder}/pack.mcmeta') as f: # type: ignore
            return f.read()

    # Otherwise, start merging
    with open(f'{rp_folder}/pack.mcmeta') as f: # type: ignore
        rp_mcmeta = json.load(f)

    with open(f'{dp_folder}/pack.mcmeta') as f: # type: ignore
        dp_mcmeta = json.load(f)

    # Use the resourcepack's pack fields
    merged_mcmeta_json["pack"] = rp_mcmeta["pack"]
    # support for the id field from smithed conventions
    if "id" in rp_mcmeta: merged_mcmeta_json["id"] = rp_mcmeta["id"]

    # combine the pack filters if they exist
    rp_has_filter = "filter" in rp_mcmeta and "block" in rp_mcmeta["filter"]
    dp_has_filter = "filter" in dp_mcmeta and "block" in dp_mcmeta["filter"]
    if rp_has_filter or dp_has_filter:
        merged_mcmeta_json["filter"] = {}
        merged_mcmeta_json["filter"]["block"] = []

    if dp_has_filter:
        for i in dp_mcmeta["filter"]["block"]:
            merged_mcmeta_json["filter"]["block"].append(i)

    if rp_has_filter:
        for i in rp_mcmeta["filter"]["block"]:
            merged_mcmeta_json["filter"]["block"].append(i)

    # datapack's experemental features
    if "features" in dp_mcmeta: merged_mcmeta_json["features"] = dp_mcmeta["features"]

    # combine the pack overlays if they exist
    rp_has_overlay = "overlays" in rp_mcmeta and "entries" in rp_mcmeta["overlays"]
    dp_has_overlay = "overlays" in dp_mcmeta and "entries" in dp_mcmeta["overlays"]
    if dp_has_overlay or rp_has_overlay:
        merged_mcmeta_json["overlays"] = {}
        merged_mcmeta_json["overlays"]["entries"] = []

    if dp_has_overlay:
        for i in dp_mcmeta["overlays"]["entries"]:
            merged_mcmeta_json["overlays"]["entries"].append(i)

    if rp_has_overlay:
        for i in rp_mcmeta["overlays"]["entries"]:
            merged_mcmeta_json["overlays"]["entries"].append(i)

    # finally write the new pack.mcmeta
    merged_mcmeta = json.dumps(merged_mcmeta_json, ensure_ascii=False, indent=4)
    return merged_mcmeta

#-------------------------------------------------------------------------------------------------------------------------
# Package the mod

mod_path = f"{mod_name_ascii}_v" + pack_version + "_for_" + start_version + "-" + end_version + ".jar"
if package_as_mod:
    print("Packaging mod...")

    img_path = f"{mod_name_ascii}_pack.png"

    with ZipFile(mod_path, "w", zipfile.ZIP_DEFLATED) as myzip:
        if enabled_dp: zipdir(f"{datapack_folder_path}/data", myzip)
        if enabled_rp: zipdir(f"{resourcepack_folder_path}/assets", myzip)

        # Handle pack.png
        if os.path.exists(f'{resourcepack_folder_path}/pack.png') and enabled_rp:
            myzip.write(f"{resourcepack_folder_path}/pack.png","pack.png")
            myzip.write(f"{resourcepack_folder_path}/pack.png", img_path)

        elif os.path.exists(f'{datapack_folder_path}/pack.png') and enabled_dp:
            myzip.write(f"{datapack_folder_path}/pack.png","pack.png")
            myzip.write(f"{resourcepack_folder_path}/pack.png", img_path)

        # Merge pack.mcmeta files
        merged = {}
        try:
            merged = merge_pack_mcmeta(dp_folder=datapack_folder_path,rp_folder=resourcepack_folder_path)
        except:
            raise Exception('Failed to merge datapack and resourcepack pack.mcmeta')

        # === Fabric ===
        myzip.writestr("fabric.mod.json",json.dumps({
            "schemaVersion": 1,
            "id": mod_name_ascii,
            "version": pack_version,
            "name": overall_name,
            "description": mod_description,
            "authors": mod_authors,
            "contact": {
                "homepage": mod_home_page,
                "sources": mod_source,
                "issues": mod_issues
            },
            "license": mod_license,
            "icon": img_path,
            "environment": "*",
            "depends": {
                "fabric-resource-loader-v0": "*"
            }
        }))

        # === Quilt ===
        mod_contributors = {}
        for i in mod_authors:
            mod_contributors[i] = "Member"

        myzip.writestr("quilt.mod.json",json.dumps({
            "schema_version": 1,
            "quilt_loader": {
                "group": "com.theblackswitch_auto-version",
                "id": mod_name_ascii,
                "version": pack_version,
                "metadata": {
                    "name": overall_name,
                    "description": mod_description,
                    "contributors": mod_contributors,
                    "contact": {
                        "homepage": mod_home_page,
                        "sources": mod_source,
                        "issues": mod_issues
                    },
                    "icon": img_path
                },
                "intermediate_mappings": "net.fabricmc:intermediary",
                "depends": []
            }
        }))

        author_string = ""
        for i in mod_authors:
            author_string += f"{i}, "

        # === Forge ===
        myzip.writestr('META-INF/mods.toml', f"""
modLoader = 'javafml'
loaderVersion = '[40,)'
license = '{mod_license}'
showAsResourcePack = false
mods = [{{ modId = '{mod_name_ascii}', version = '{pack_version}', displayName = '{overall_name}', description = '{mod_description}', logoFile = '{img_path}', updateJSONURL = 'https://api.modrinth.com/updates/{modrinth_project_id}/forge_updates.json', credits = 'Generated thanks to theblackswitch', authors = '{author_string}', displayURL = '{mod_home_page}' }},]
issueTrackerURL = '{mod_issues}'
        """)

        myzip.writestr('mcmod.info', f"""
[
    {{
        "modid": "{mod_name_ascii}",
        "name": "{overall_name}",
        "description": "{mod_description}",
        "version": "{pack_version}",
        "mcversion": "{start_version}-{end_version}",
        "url": "{mod_home_page}",
        "updateUrl": "",
        "authorList": {mod_authors},
        "credits": "Generated thanks to theblackswitch",
        "logoFile": "{img_path}",
        "screenshots": [],
        "dependencies": []
    }}
]
        """)


        # === Neoforge ===
        myzip.writestr('META-INF/neoforge.mods.toml', f"""
modLoader = 'javafml'
loaderVersion = '[1,)'
license = '{mod_license}'
showAsResourcePack = false
mods = [{{modId = '{mod_name_ascii}', version = '{pack_version}', displayName = '{overall_name}', description = '{mod_description}', logoFile = '{img_path}', updateJSONURL = 'https://api.modrinth.com/updates/{modrinth_project_id}/forge_updates.json?neoforge=only', credits = 'Generated thanks to theblackswitch', authors = '{author_string}', displayURL = '{mod_home_page}'}},]
issueTrackerURL = '{mod_issues}'
        """)
        

        myzip.writestr("pack.mcmeta", merged)
        
#----------------------
#  Upload to modrinth
#----------------------

#-------------------------------------------------------------------------------------------------------------------------
def upload_to_modrinth(dp_path, rp_path, mod_path, pack_version, changelog, game_versions, start_version, end_version):
    api_url = "https://api.modrinth.com/v2/version"
    dp_name = f"{datapack_name} V" + pack_version + ".zip"
    rp_name = f"{resourcepack_name} V" + pack_version + ".zip"

    print("Uploading pack(s)...")

    #-------------------------------------------------------
    ## Upload datapack and resourcepack
    #-------------------------------------------------------

    files = {}
    file_types = {}
    file_parts = []

    if enabled_dp:
        files["datapack"] = (dp_name, open(dp_path, 'rb'))
        file_types['datapack'] = None
        file_parts.append('datapack')

    if enabled_rp:
        files["resourcepack"] = (rp_name, open(rp_path, 'rb'))
        file_types['resourcepack'] = resourcepack_type if enabled_dp else None
        file_parts.append('resourcepack')


    payload = {
        "project_id": modrinth_project_id,
        "version_number": pack_version,
        "version_title": f"{overall_name} V{pack_version} for {start_version}-{end_version}",
        "version_body": changelog,
        "dependencies": [],
        "game_versions": game_versions,
        "loaders": [
            "datapack" if enabled_dp else "minecraft"
        ],
        "release_channel": pack_release_type,
        "featured": True,
        "file_parts": file_parts,
        "file_types": file_types
    }

    form_data = {
        "data": json.dumps(payload)
    }

    headers = {
        "Authorization": modrinth_pat
    }

    response = requests.post(api_url, headers=headers, data=form_data, files=files) # type: ignore

    print("Status code:", response.status_code)
    if(response.status_code != 200):
        print("Response:", response.text)
        print('Failed to upload to modrinth!')
        exit()

    # close files
    for key, (name, file) in files.items():
        file.close()

    #-------------------------------------------------------
    ## Upload mod
    #-------------------------------------------------------

    if package_as_mod:
        print("Uploading mod...")
        files = {
            "mod": (f"{overall_name} V{pack_version} for {start_version}-{end_version}.jar", open(mod_path, 'rb'))
        }

        payload.pop('file_types')
        payload["file_parts"] = ["mod"]

        payload["loaders"] = ["fabric","forge","neoforge","quilt"]
        # env = {}

        #if enabled_dp:
        #    env['server'] = 'required'
        
        #if enabled_rp:
        #    if resourcepack_type == 'required-resource-pack':
        #        env['client'] = 'required'
        #    else:
        #        env['client'] = 'optional'

        #payload['environment'] = env

        form_data = {
            "data": json.dumps(payload)
        }

        response = requests.post(api_url, headers=headers, data=form_data, files=files) # type: ignore
        print("Status code:", response.status_code)
        print("Response:", response.text)

        # close files
        for key, (name, file) in files.items():
            file.close()
#-------------------------------------------------------------------------------------------------------------------------


#-------------------------
#  Upload to curse forge
#-------------------------

cf_version_type_response = {}
cf_version_response = {}

#-------------------------------------------------------------------------------------------------------------------------
# Convert a single game version (like 1.21.6 or 1.18.2) into an id curseforge uses (like 12281)

def get_cf_version_id(version: str):
    global cf_version_type_response
    global cf_version_response

    #-------------------------------------------------------
    ## Place all requests
    #-------------------------------------------------------

    # Cache all the version types
    if len(cf_version_type_response) == 0:
        response = requests.get(f"http://api.curseforge.com/v1/games/{mc_game_id}/version-types", headers={
            "x-api-key": cf_api_key
        })
        if response.status_code == 200:
            cf_version_type_response = json.loads(response.text)
        else:
            raise Exception(f'Failed to get curseforge version types! Code: {response.status_code} Response: {response.text}')
        
    # Cache all versions
    if len(cf_version_response) == 0:
        response = requests.get(f"http://api.curseforge.com/v2/games/{mc_game_id}/versions", headers={
            "x-api-key": cf_api_key
        })
        if response.status_code == 200:
            cf_version_response = json.loads(response.text)
        else:
            raise Exception(f'Failed to get curseforge versions! Code: {response.status_code} Response: {response.text}')
        
    #-------------------------------------------------------
    ## Get the version type id
    #-------------------------------------------------------

    # go through all version id's and grab the first one that matches  
    cf_version_type = -1
    for item in cf_version_type_response['data']:    
        if 'minecraft' in item['slug']:
            cf_version_parts = item['slug'].split('-')
            mc_version_parts = version.split('.')


            if mc_version_parts[0] == '1':
                if cf_version_parts[1] == '1' and cf_version_parts[2] == mc_version_parts[1]:
                    cf_version_type = item['id']
                    break;
            
            elif len(mc_version_parts) == 2:
                if cf_version_parts[1] == mc_version_parts[0]:
                    cf_version_type = item['id']
                    break;
                    

    
    if cf_version_type == -1:
        raise Exception(f'Failed to find version type of version {version}')

    #-------------------------------------------------------
    ## Use the version type id to grab the actual id
    #-------------------------------------------------------
    
    for curr_vers_list in cf_version_response['data']:
        if curr_vers_list['type'] == cf_version_type:

            fallback = ""
            for curr_vers in curr_vers_list['versions']:

                version_slug = version.replace('.','-')
                if version_slug in curr_vers['slug']:

                    # Releases should be prioritized. Use a snapshot version as a fallback
                    if 'snapshot' in curr_vers['slug'] and not fallback:
                        fallback = curr_vers['id']

                    # Prioritize versions that match exactly
                    elif len(version_slug) != len(curr_vers['slug']):
                        fallback = curr_vers['slug']

                    else:
                        return curr_vers['id']
                
            if fallback:
                return fallback
                
    raise Exception(f'Failed to find cf version-id of version: {version}')

#-------------------------------------------------------------------------------------------------------------------------
# get the id of the mod loader 

def get_cf_mod_loader(loader: str):
    global cf_version_type_response
    global cf_version_response

    #-------------------------------------------------------
    ## Place all requests
    #-------------------------------------------------------

    # Cache all version types
    if len(cf_version_type_response) == 0:
        response = requests.get(f"http://api.curseforge.com/v1/games/{mc_game_id}/version-types", headers={
            "x-api-key": cf_api_key
        })
        if response.status_code == 200:
            cf_version_type_response = json.loads(response.text)
        else:
            raise Exception(f'Failed to get curseforge version types! Code: {response.status_code} Response: {response.text}')

    # Cache all versions
    if len(cf_version_response) == 0:
        response = requests.get(f"http://api.curseforge.com/v2/games/{mc_game_id}/versions", headers={
            "x-api-key": cf_api_key
        })
        if response.status_code == 200:
            cf_version_response = json.loads(response.text)
        else:
            raise Exception(f'Failed to get curseforge versions! Code: {response.status_code} Response: {response.text}')
        
    #-------------------------------------------------------
    ## Get the loader type id
    #-------------------------------------------------------
    mod_loader_version_type = -1
    
    for item in cf_version_type_response['data']:    
        if 'modloader' in item['slug']:
            mod_loader_version_type = item['id']

    if mod_loader_version_type == -1:
        raise Exception('Failed to collect cf modloaders')

    #-------------------------------------------------------
    ## Use the version type id to grab all loader id's
    #-------------------------------------------------------
    
    for curr_vers_list in cf_version_response['data']:
        if curr_vers_list['type'] == mod_loader_version_type:
            for item in curr_vers_list['versions']:
                if loader in item['slug']:
                    return item['id']
                
    raise Exception(f'Failed to find cf loader id for: {loader}')

#-------------------------------------------------------------------------------------------------------------------------
# get the id of the mod loader 

def get_cf_environment(env: str):
    global cf_version_type_response
    global cf_version_response

    #-------------------------------------------------------
    ## Place all requests
    #-------------------------------------------------------

    # Cache all version types
    if len(cf_version_type_response) == 0:
        response = requests.get(f"http://api.curseforge.com/v1/games/{mc_game_id}/version-types", headers={
            "x-api-key": cf_api_key
        })
        if response.status_code == 200:
            cf_version_type_response = json.loads(response.text)
        else:
            raise Exception(f'Failed to get curseforge version types! Code: {response.status_code} Response: {response.text}')

    # Cache all versions
    if len(cf_version_response) == 0:
        response = requests.get(f"http://api.curseforge.com/v2/games/{mc_game_id}/versions", headers={
            "x-api-key": cf_api_key
        })
        if response.status_code == 200:
            cf_version_response = json.loads(response.text)
        else:
            raise Exception(f'Failed to get curseforge versions! Code: {response.status_code} Response: {response.text}')
        
    #-------------------------------------------------------
    ## Get the env type id
    #-------------------------------------------------------
    env_version_type = -1
    
    for item in cf_version_type_response['data']:    
        if 'environment' in item['slug']:
            env_version_type = item['id']

    if env_version_type == -1:
        raise Exception('Failed to collect cf environments')

    #-------------------------------------------------------
    ## Use the version type id to grab all env id's
    #-------------------------------------------------------
    
    for curr_vers_list in cf_version_response['data']:
        if curr_vers_list['type'] == env_version_type:
            for item in curr_vers_list['versions']:
                if env in item['slug']:
                    return item['id']
                
    raise Exception(f'Failed to find cf env id for: {env}')

#-------------------------------------------------------------------------------------------------------------------------
# Convert multiple game versions (like 1.21.6 or 1.18.2) into an id curseforge uses (like 12281)
def get_cf_game_versions(game_versions):
    
    version_ids = []
    for version in game_versions:
        id = get_cf_version_id(version)
        version_ids.append(id)

    return version_ids

#-------------------------------------------------------------------------------------------------------------------------
# upload a single file to curseforge with an optional parent file and return the file id
def upload_file_cf(path, parent, name, game_version_ids, changelog, proj_id, mod_loaders=[], envs=[]):
    api_url = f"https://minecraft.curseforge.com/api/projects/{proj_id}/upload-file"

    auth_header = {
        "X-api-token": curseforge_pat
    }

    metadata = {
        "changelog": changelog,
        "changelogType": "markdown",
        "displayName": name,
        "releaseType": pack_release_type,
        "isMarkedForManualRelease": False
    }



    if parent:
        metadata["parentFileID"] = parent
    else:
        metadata["gameVersions"] = game_version_ids
        if len(mod_loaders) > 0:
            for i in mod_loaders:
                metadata["gameVersions"].append(get_cf_mod_loader(i))
            for i in envs:
                metadata['gameVersions'].append(get_cf_environment(i))

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
def upload_to_curseforge(dp_path, rp_path, mod_path, pack_version, changelog, game_versions, start_version, end_version):

    dp_name = f"{datapack_name} V" + pack_version + ".zip"
    rp_name = f"{resourcepack_name} V" + pack_version + ".zip"
    mod_name = f"{overall_name} V{pack_version} for {start_version}-{end_version}.jar"


    dp_id = 0
    if enabled_dp:
        # Upload the datapack
        print("Uploading Datapack...")
        dp_id = upload_file_cf(path=dp_path, parent=None, name=dp_name, game_version_ids=get_cf_game_versions(game_versions), proj_id=curseforge_datapack_project_id, changelog=changelog)

    if enabled_rp and enabled_dp:
        # Upload the resourcepack as a child of the datapack
        print("Uploading Resourcepack...")
        upload_file_cf(path=rp_path, parent=dp_id, name=rp_name, game_version_ids=get_cf_game_versions(game_versions), proj_id=curseforge_datapack_project_id, changelog=changelog)
    
    elif enabled_rp:
        # Upload the resourcepack as a child of the datapack
        print("Uploading Resourcepack...")
        upload_file_cf(path=rp_path, parent=None, name=rp_name, game_version_ids=get_cf_game_versions(game_versions), proj_id=curseforge_datapack_project_id, changelog=changelog)

    # Upload the mod
    if package_as_mod:
        print('Uploading Mod...')
        envs = []
        if enabled_dp:
            envs.append('server')
        if enabled_rp:
            envs.append('client')
        upload_file_cf(path=mod_path, parent=None, name=mod_name, game_version_ids=get_cf_game_versions(game_versions), proj_id=curseforge_mod_project_id, changelog=changelog, mod_loaders=["forge", "fabric", "quilt", "neoforge"], envs=envs)

#-------------------------------------------------------------------------------------------------------------------------

if enable_modrinth_upload:
    print("")
    print("====== Uploading to modrinth ======")
    upload_to_modrinth(datapack_path, resourcepack_path, mod_path, pack_version, changelog, interpolated_versions, start_version, end_version)

if enable_cf_upload:
    print("")
    print("====== Uploading to curseforge ======")
    upload_to_curseforge(datapack_path, resourcepack_path, mod_path, pack_version, changelog, interpolated_versions, start_version, end_version)

