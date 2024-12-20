import os
import numpy as np
import h5py
# import data_loading_helpers_modified as dh
from glob import glob
from tqdm import tqdm
import pickle

task = "NR"

rootdir = f"./datasets/ZuCo/task2-NR-2.0/Matlab_files/"

dataset_dict = {}

for file in tqdm(os.listdir(rootdir)):
    if file.endswith(task+".mat"):

        file_name = rootdir + file

        # print('file name:', file_name)
        subject = file_name.split("results")[1].split("_")[0]
        # print('subject: ', subject)

        # exclude YMH due to incomplete data because of dyslexia
        if subject != 'YMH':
            print(subject)
            assert subject not in dataset_dict
            print("Hello")