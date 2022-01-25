Tested on; Windows 11 using Powershell 7 and python 3.10.1

### Intro
The script color_transfer.py is used to change the appearance of a source image according to the color pattern of a target image.

### Dependencies 
The script requires:
Python3

To install packages:

	pip install numpy
	pip install opencv-python
	
	
### Before running
	Before running you want to make 3 folders; results, target, source
### Running normalisation
note: the script is rather slow on large images.

	1: Place the images you want to change in a folder called source
	2: Place the image you want all the other images to be normalised to in a folder called 'target'
	3: Run the python script using: python3 color_transfer.py
	
	The normalised images will go into a folder called 'results'


