# AUM3-HPU-HSI-Research
Modified AUM2-HPU-HSI-Research toolbox including the AUM3 (Tiled AUM2) dataset

## AUM3 Dataset 
The AUM3 Dataset is adapted from the "CloudPatch-7 Hyperspectral Dataset" specifically: "spectral_data.mat.zip	350.98 MB" by Dr. Kursun.
It can be found at: [https://ieee-dataport.org/documents/cloudpatch-7-hyperspectral-dataset](https://ieee-dataport.org/documents/cloudpatch-7-hyperspectral-dataset)

### Adding the AUM3 Dataset to the custom_datasets.py
The AUM3 Dataset was added to the ```custom_datasets.py``` folder, we must also have the 2 datasets in a mat file called ```AUM2_Dataset.mat``` and ```AUM2_gt.mat``` in the folder ```data/Datasets/AUM3```.

## Building Containers
The containers ```internetAccess_aum3.sif``` and ```computeNodes_aum3.sif``` were built for the AUM3 Dataset. These containers can be found at: [SYSLAB LINK]
