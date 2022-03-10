// the macro
folder_loc = "G:/My Drive/labbook/experiments/making an imaging box for small plates for arabidopsis roots using raspberry pi/automated image analyses using fiji/"

list = getFileList(folder_loc);

for (i=0;i<list.length;i++){
file = list[i];






// main
open(folder_loc+file);
run("Select None");
run("8-bit");

run("Subtract Background...", "rolling=50 sliding");
run("Enhance Contrast...", "saturated=5"); // change saturated= to the percentage you want



run("Threshold...");
setThreshold(6, 46);
setOption("BlackBackground", false);
run("Convert to Mask");


run("Despeckle");

run("Remove Outliers...", "radius=10 threshold=100 which=Bright");
run("Convert to Mask");
run("Watershed");

makeOval(385, -115, 3324, 3340);
run("Analyze Particles...", "size=50-Infinity summarize");

name_string = file;
tiff_string = '.tiff';
outname = folder_loc+name_string+tiff_string;
saveAs("Tiff", outname);
close();


}


