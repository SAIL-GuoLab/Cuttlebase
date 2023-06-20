# Copy the brain-extracted scans into a new directory for the atlas to be built in
cp ./1_scans_subject_space 3_atlas

# Build a template from the scans
cd 3_atlas && source ~/bin/ants/bin/buildtemplateparallel.sh -n 0 -d 3 -o warped_ -c 2 -m 100x200x100 -j 10 -s CC -r 1 -t GR *.nii.gz