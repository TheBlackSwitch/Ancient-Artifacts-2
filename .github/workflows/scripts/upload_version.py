#-----------
#  Imports
#-----------

import sys
import json

#---------------
#  Global Vars
#---------------

version_tag = ""
modrinth_pat = ""
curseforge_pat = ""

#----------------
#  Get all args
#----------------

#Yay magic numbers!
if(sys.argv[1]):
    version_tag = sys.argv[1] #The name of the release tag EG: V2.5.0b-mod-for-1.21.6-1.21.7
else:
    print("No tag name!")
if(sys.argv[2]):
    modrinth_pat = sys.argv[2] #My modrinth token
else:
    print("No modrinth PAT!")
if(sys.argv[3]):
    curseforge_pat = sys.argv[3] #My curseforge token
else:
    print("No curseforge PAT!")

print("Hello world from the python script!")


#Get all version data from the tag
def parse_version() {

}