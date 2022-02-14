# Cuttlebase: 3D Brain
 
To create an MRI-based 3D brain atlas for the dwarf cuttlefish, _ex vivo_ magnetic resonance imaging of 8 adult dwarf cuttlefish brains (4 males, 4 females) at 50 µm isotropic resolution was performed. Deep learning techniques were used to improve manually-annoted brain masks that were then used to extract the brain regions for subsequent diffeomorphic registration using the ANTs toolbox. Prior neuroanatomical descriptions were used to guide the annotation of brain lobes, which were co-registered to create a merged, annotated, brain template representative of the 8 cuttlefish subjects used in this study. This repository contains sourcecode for boldened steps outlined below used to create the MRI-based 3D brain atlas:

Step 0. NIFTI conversion, bias field correction, isotropic upsampling to 50 micron resolution  
Step 1. Manual Brain Mask Annotation  
Step 2. Brain Mask Improvement using DL-BET (see https://github.com/SAIL-GuoLab/DL-BET)  
Step 3. Brain mask used to extract brain from MRI scan for each animal  
**Step 4. Diffeomorphic Registration using ANTs toolbox**  
Step 5. Manual Segmentation of Brain ROIs  
**Step 6. Transformation of first set of segmented ROIs to remaining brains**  
Step 7. Manual Correction of transformed segmentations  
**Step 8. Majority Voting**
