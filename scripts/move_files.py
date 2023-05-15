import shutil
import os

# define source and destination paths
src_folder = "C:/Users/steve/Documents/RADD/RDA_Interview_Exercise/Exercise Files/"
dest_folder = "C:/Users/steve/Documents/RADD/RDA_Interview_Exercise/data/"

# list all files in source folder
files = os.listdir(src_folder)

# iterate over the list of files
for file in files:
    # construct full file path
    src = src_folder + file
    dest = dest_folder + file
    # move the file to destination folder
    if file.endswith('.csv'):  # Ensures that only .csv files are moved
        shutil.move(src, dest)
