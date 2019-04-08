i#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Apr  8 09:19:26 2019

@author: xihajun
"""

import pandas as pd

# benign path
path = '/Users/xihajun/Downloads/Benign/Benign2017/' # use your path
allFiles = glob.glob(path + "/*.csv")

# frame to save data
frame = pd.DataFrame()
list_ = []
for file_ in allFiles:
    df = pd.read_csv(file_,index_col=None, header=0)
    list_.append(df)

# Adware path
path = '/Users/xihajun/Downloads/Adware/'
allFiles = glob.glob(path + "*/*.csv")
for file_ in allFiles:
    df = pd.read_csv(file_,index_col=None, header=0)
    list_.append(df)

# save all the list_ variable into frame    
frame = pd.concat(list_)
