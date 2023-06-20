cd ./1_scans_subject_space/

# transform the scan labels from subject to template space
for i in $(ls *.nii.gz); do

  fname=$(basename $i)
  fname=${fname%%.*}

  warpfile=(../3_atlas/warped_"$fname"Warp.nii.gz)
  affinefile=(../3_atlas/warped_"$fname"Affine.txt)

  labelfile=(../2_labels_subject_space/"$fname"_label.nii.gz)
  
  ls $warpfile $affinefile

  echo ANTs-WarpImageMultiTransform
  WarpImageMultiTransform 3 "$labelfile" ../4_labels_template_space/warped_"$fname"_labels.nii.gz -R ../3_atlas/warped_template.nii.gz --use-NN "$warpfile" "$affinefile"

done
