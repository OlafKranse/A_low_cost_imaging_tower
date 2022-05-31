// the macro
folder_loc = "G:/My Drive/1imagetransfer/Rosie/Rosie 1/091121/Col-0/source/"

list = getFileList(folder_loc);

for (xx=0;xx<list.length;xx++){
file = list[xx];

// main
open(folder_loc+file);




run("8-bit");
run("Enhance Contrast...", "saturated=10");
run("Subtract Background...", "rolling=25 sliding");



run("Enhance Contrast...", "saturated=10");





run("Threshold...");

setThreshold(6, 46);

setOption("BlackBackground", false);

run("Convert to Mask");



run("Despeckle");

run("Convert to Mask");

run("Watershed");


makeOval(909, -16, 2598, 2494);


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

