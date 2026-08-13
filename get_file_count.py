import os

file_count = 0
for root, dirs, files in os.walk("D:\Minecraft\Beet Projects\AncientArtifacts-bolt\src"):
    file_count += len(files)

print(file_count)