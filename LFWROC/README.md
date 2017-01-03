# LFW ROC

## lfw9955.mat

LFW face features, 99.55% accuracy.

## lfw_eval.m

LFW evaluation matlab code. Run in matlab to get the accuracy and a roc curve of provided feature.

## lfwfeatures.mat

LFW face features, 98.97% accuracy, extracted from [CenterFace] (https://github.com/ydwen/caffe-face) provided model.

## pair.label

Generated from original lfw [pairs.txt](http://vis-www.cs.umass.edu/lfw/pairs.txt). 

    1 lfw/lfw/Abel_Pacheco/Abel_Pacheco_0001.jpg lfw/lfw/Abel_Pacheco/Abel_Pacheco_0004.jpg
    1 lfw/lfw/Akhmed_Zakayev/Akhmed_Zakayev_0001.jpg lfw/lfw/Akhmed_Zakayev/Akhmed_Zakayev_0003.jpg
    ...
    0 lfw/lfw/Abdel_Madi_Shabneh/Abdel_Madi_Shabneh_0001.jpg lfw/lfw/Dean_Barker/Dean_Barker_0001.jpg
    0 lfw/lfw/Abdel_Madi_Shabneh/Abdel_Madi_Shabneh_0001.jpg lfw/lfw/Giancarlo_Fisichella/Giancarlo_Fisichella_0001.jpg


## PCA.m

A matlab function for PCA.

## ROCCruve.m

A matlab function for ROC Curve.
