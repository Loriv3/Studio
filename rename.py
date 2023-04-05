# script to rename jpg files in the current directory

import os

def rename_files():
    path = './frameTest2'
    files = [f for f in os.listdir(path)]
    files = sorted(files, key=lambda x: len(x))
    print(files)
    i = 0
    for file in files:
        new_name = f"immagine{str(i+1).zfill(4)}.jpg"
        os.rename(os.path.join(path, file), os.path.join(path, new_name))
        i += 2
rename_files()
    