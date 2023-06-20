% Import NIFTI toolbox
addpath(genpath('matlab_toolbox/NIfTI_20140122'))
pathdef

% Define paths for all label files
label1 = 'Steps_4_&_6_MRI_template_registration/4_labels_template_space/warped_animal_1a_labels.nii.gz'
label2 = 'Steps_4_&_6_MRI_template_registration/4_labels_template_space/warped_animal_2a_labels.nii.gz'
label3 = 'Steps_4_&_6_MRI_template_registration/4_labels_template_space/warped_animal_3a_labels.nii.gz'
label4 = 'Steps_4_&_6_MRI_template_registration/4_labels_template_space/warped_animal_4a_labels.nii.gz'
label5 = 'Steps_4_&_6_MRI_template_registration/4_labels_template_space/warped_animal_5a_labels.nii.gz'
label6 = 'Steps_4_&_6_MRI_template_registration/4_labels_template_space/warped_animal_6a_labels.nii.gz'
label7 = 'Steps_4_&_6_MRI_template_registration/4_labels_template_space/warped_animal_7a_labels.nii.gz'
label8 = 'Steps_4_&_6_MRI_template_registration/4_labels_template_space/warped_animal_8a_labels.nii.gz'
label1m = 'Steps_4_&_6_MRI_template_registration/4_labels_template_space/warped_mirrored_animal_1a_labels.nii.gz'
label2m = 'Steps_4_&_6_MRI_template_registration/4_labels_template_space/warped_mirrored_animal_2a_labels.nii.gz'
label3m = 'Steps_4_&_6_MRI_template_registration/4_labels_template_space/warped_mirrored_animal_3a_labels.nii.gz'
label4m = 'Steps_4_&_6_MRI_template_registration/4_labels_template_space/warped_mirrored_animal_4a_labels.nii.gz'
label5m = 'Steps_4_&_6_MRI_template_registration/4_labels_template_space/warped_mirrored_animal_5a_labels.nii.gz'
label6m = 'Steps_4_&_6_MRI_template_registration/4_labels_template_space/warped_mirrored_animal_6a_labels.nii.gz'
label7m = 'Steps_4_&_6_MRI_template_registration/4_labels_template_space/warped_mirrored_animal_7a_labels.nii.gz'
label8m = 'Steps_4_&_6_MRI_template_registration/4_labels_template_space/warped_mirrored_animal_8a_labels.nii.gz'

% Load in NIFTI files
label1_nii = load_nii(label1);
label1_img = label1_nii.img;

label2_nii = load_nii(label2);
label2_img = label2_nii.img;

label3_nii = load_nii(label3);
label3_img = label3_nii.img;

label4_nii = load_nii(label4);
label4_img = label4_nii.img;

label5_nii = load_nii(label5);
label5_img = label5_nii.img;

label6_nii = load_nii(label6);
label6_img = label6_nii.img;

label7_nii = load_nii(label7);
label7_img = label7_nii.img;

label8_nii = load_nii(label8);
label8_img = label8_nii.img;

label1m_nii = load_nii(label1m);
label1m_img = label1m_nii.img;

label2m_nii = load_nii(label2m);
label2m_img = label2m_nii.img;

label3m_nii = load_nii(label3m);
label3m_img = label3m_nii.img;

label4m_nii = load_nii(label4m);
label4m_img = label4m_nii.img;

label5m_nii = load_nii(label5m);
label5m_img = label5m_nii.img;

label6m_nii = load_nii(label6m);
label6m_img = label6m_nii.img;

label7m_nii = load_nii(label7m);
label7m_img = label7m_nii.img;

label8m_nii = load_nii(label8m);
label8m_img = label8m_nii.img;

% Take the mode across all files at each pixel
shape = size(label1_img);
majority = label1_nii;
majority_img = majority.img;

for i = 1:shape(1)
    for j = 1:shape(2)
        for k = 1:shape(3)
            majority_img(i,j,k) = mode([label1_img(i,j,k),label2_img(i,j,k),label3_img(i,j,k),label4_img(i,j,k),label5_img(i,j,k),label6_img(i,j,k),label7_img(i,j,k),label8_img(i,j,k),label1m_img(i,j,k),label2m_img(i,j,k),label3m_img(i,j,k),label4m_img(i,j,k),label5m_img(i,j,k),label6m_img(i,j,k),label7m_img(i,j,k),label8m_img(i,j,k)]);
        end
    end 
end 

majority.img = majority_img;

% Save final label map
save_nii(majority,'Steps_4_&_6_MRI_template_registration/3_atlas/warped_template_labels.nii.gz');


