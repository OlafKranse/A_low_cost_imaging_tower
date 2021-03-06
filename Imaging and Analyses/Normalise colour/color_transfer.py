### Adjusted script from: https://github.com/chia56028/Color-Transfer-between-Images // chia56028 // based on: Color Transferbetween Images, Erik Reinhard, Michael Ashikhmin, Bruce Gooch,and Peter Shirley University of Utah

import numpy as np
import cv2
import glob, os

work_dir = os.path.dirname(os.path.realpath(__file__))
os.chdir(work_dir)

def read_file(sn,tn):
    s = cv2.imread('source/'+sn)
    s = cv2.cvtColor(s,cv2.COLOR_BGR2LAB)
    t = cv2.imread('target/'+tn)
    t = cv2.cvtColor(t,cv2.COLOR_BGR2LAB)
    return s, t

def get_mean_and_std(x): 
    x_mean, x_std = cv2.meanStdDev(x)
    x_mean = np.hstack(np.around(x_mean,2))
    x_std = np.hstack(np.around(x_std,2))
    return x_mean, x_std


sources = []
targets = []
os.chdir(work_dir+"//target")
for target in glob.glob("*.jpg"):
        targets.append(target)

os.chdir(work_dir+"//source")

for source in glob.glob("*.jpg"):
    sources.append(source)

os.chdir(work_dir)

def color_transfer():
    global sources
    global targets
    
    

    for n in range(len(sources)):
        print("Converting picture"+str(n+1)+"...")
        s, t = read_file(sources[n],targets[0])
        s_mean, s_std = get_mean_and_std(s)
        t_mean, t_std = get_mean_and_std(t)

        height, width, channel = s.shape
        for i in range(0,height):
            for j in range(0,width):
                for k in range(0,channel):
                    x = s[i,j,k]
                    x = ((x-s_mean[k])*(t_std[k]/s_std[k]))+t_mean[k]
                    # round or +0.5
                    x = round(x)
                    # boundary check
                    x = 0 if x<0 else x
                    x = 255 if x>255 else x
                    s[i,j,k] = x

        s = cv2.cvtColor(s,cv2.COLOR_LAB2BGR)
        cv2.imwrite('result/r'+str(n+1)+'.bmp',s)

color_transfer()
os.system("pause")
