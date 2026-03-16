# this project is used to organize the files in the directory
# this project write using github copilot.

import os
import shutil

def organize_files(directory):
    # create a dictionary to store the file types and their corresponding directories
    file_types = {
        'Documents': ['.pdf', '.docx', '.txt'],
        'Images': ['.jpg', '.jpeg', '.png', '.gif'],
        'Videos': ['.mp4', '.avi', '.mkv'],
        'Music': ['.mp3', '.wav', '.aac'],
        'Archives': ['.zip', '.rar', '.tar.gz']
    }

    # create directories for each file type if they don't exist
    for folder in file_types.keys():
        folder_path = os.path.join(directory, folder)
        if not os.path.exists(folder_path):
            os.makedirs(folder_path)

    # iterate through the files in the directory
    for filename in os.listdir(directory):
        file_path = os.path.join(directory, filename)
        
        # skip directories
        if os.path.isdir(file_path):
            continue
        
        # get the file extension
        _, ext = os.path.splitext(filename)
        
        # move the file to the corresponding directory based on its extension
        moved = False
        for folder, extensions in file_types.items():
            if ext.lower() in extensions:
                shutil.move(file_path, os.path.join(directory, folder, filename))
                moved = True
                break
        
        # if the file type is not recognized, move it to an "Others" directory
        if not moved:
            others_folder = os.path.join(directory, 'Others')
            if not os.path.exists(others_folder):
                os.makedirs(others_folder)
            shutil.move(file_path, os.path.join(others_folder, filename))