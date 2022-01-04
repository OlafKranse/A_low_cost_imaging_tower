// the macro
folder_loc = "G:/My Drive/1imagetransfer/Rosie/Rosie 1/091121/Col-0/source/"

list = getFileList(folder_loc);

for (xx=0;xx<list.length;xx++){
file = list[xx];

// main
open(folder_loc+file);


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

makeOval(736, -16, 2936, 2925);
run("Analyze Particles...", "size=50-1800 summarize");

name_string = file;
tiff_string = '.tiff';
outname = folder_loc+name_string+tiff_string;
saveAs("Tiff", outname);
close();


}
out_name_res = folder_loc+"results.csv"
saveAs("Results", out_name_res);
Table.deleteRows(0, 0, "Summary.csv");

