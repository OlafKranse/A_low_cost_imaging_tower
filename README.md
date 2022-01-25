# A_low_cost_imaging_tower
## Intro
A low cost Raspberry pi powered imaging tower and analyses tools for detecting *Heterodera schachtii* on *Arabidopsis thaliana*.

## lists of requirements to repeat as described in paper
### Printing times (Sliced in CURA - 20% infill - PVA Support extruder 2 (BB core) - Default settings) ###
1.	UMS3_Tower_top < 12h13m
2.	UMS3_Tower_bot < 16h55m
3.	UMS3_Tower_bot_AND_Tower_top < 1d05h30m

### Hardware used ###
1.	Ultimaker S3 with a 0.4 AA and BB core.
2.	Ultimaker tough PLA
3.	Ultimaker PVA
4.	Raspberry pi 4B 4GB RAM
5.	60 LED STRIP LIGHT 6400K SET IP65 12V (V-TAC)
6.	RPI-HQ-CAMERA(RASPBERRY-PI)
7.	16mm Telephoto Lens (RASPBERRY-PI)
8.	30 cm Ribbon Cable (THE PI HUT)
9.	M2 Bolts (RS components)
10.	M2 Nuts (RS components)

### Software requirements ###
1.	Raspberry Pi Imager (to make the raspberry pi bootable disk)
2.	Raspistill (included in Raspberry Pi OS*)
3.	ImageJ (FIJI)

* Raspistill has been replaced with libcamera-still in the latest Raspberry pi os (Bullseye). Either install a version prior to Bullseye or re-enable legacy camera option in raspi-config.


## Contents

This repository contains all the 3D files to make and construct the housing of the components of the imaging tower and scripts to analyse these images. 

1) Image tower 3D files:

	a: If you own an ultimaker S3 with an AA 0.4 core, PLA and a BB core with PVA, you can use the presliced files: A_low_cost_imaging_tower/Ultimaker S3 CURA sliced/
	b: If you own another 3D printer, or want to use a printing service, you can use the files in A_low_cost_imaging_tower/STL files/ to generate sliced files for printing. 
	Note: the slicing for our files is done in Ultimakers CURA software, which also works for some non Ultimaker printers.

2) Assembly of the tower. 

	Items needed:
	-   RPI-HQ-CAMERA (Raspberry PI)
	-   16mm Telephoto Lens (RASPBERRY-PI)
	-   Raspberry PI via a 30 cm Ribbon Cable (THE PI HUT)
	-   60 LED STRIP LIGHT 6400K SET IP65 12V (V-TAC) 
    
	Assembly instructions for the imaging tower can be found in A_low_cost_imaging_tower/Diagram/Assembly.svg and A_low_cost_imaging_tower/Diagram/compact diagram.svg
    
  
