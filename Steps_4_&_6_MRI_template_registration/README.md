# Template generation & label registration

To build the MRI atlas, the brain-extracted MRI scans are co-registered into the same template space using ANTs toolbox. Resulting warp files are then used to transform annotated brain region labels into the template space. Files used used for this step were saved and organized as follows: 

Bash scripts: 
- `1_build_MRI_template.sh`: Builds MRI template from brain-extracted MRI scans
    - Input: `1_scans_subject_space`
    - Output: `3_atlas`
- `2_transform_labels_to_template_space.sh`: Transforms manually annotated brain region labels to template space
    - Input: `2_labels_subject_space` & `3_atlas`
    - Output: `4_labels_template_space`

Data paths, each saved at the same directory level as the bash scripts: 
- `1_scans_subject_space`: MRI scans with brains extracted from external tissue & the mirror image of each scan across the sagittal plane.
- `2_labels_subject_space`: Manually annotated labels of brain regions for original & mirrored MRI scans, saved as NIFTI files.
- `3_atlas`: MRI template and associated warp files
- `4_labels_template_space`: Brain region labels transformed to the MRI template space
