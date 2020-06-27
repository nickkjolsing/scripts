from os import listdir
from os.path import isfile, join
from array import array
import numpy as np

mypath = "/Volumes/Luigi/videoDownload"

fileNameList = listdir(mypath)

nameNumber = len(fileNameList)
count = 0
art = np.array(fileNameList)
nextName = ""

for f in art:
    for f2 in art: 
        nextName = f2
    count = count + 1
print(count)



    