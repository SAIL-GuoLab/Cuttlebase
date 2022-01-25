# This bash script builds a template from a directory called 'Inputs' saved within the same directory as this file
# A template called 'warped_template.nii.gz' and individually transformed scans will be saved in the same directory as the input scans.

cd ./Inputs
source ~/bin/ants/buildtemplateparallel.sh -n 0 -d 3 -o warped_ c 2 -m 200x200x200 -j 10 -s MSQ -r 1 -t GR *nii.gz
