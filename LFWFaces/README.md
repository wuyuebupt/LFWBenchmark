# LFW Faces

# lfwcenterfaces.mat
This is the results of face boundingboxes and five facial points for LFW dataset from [MTCNN](https://github.com/kpzhang93/MTCNN_face_detection_alignment).

imglist: 13233x1 cell

'lfw/lfw/Aaron_Eckhart/Aaron_Eckhart_0001.jpg'

'lfw/lfw/Aaron_Guiel/Aaron_Guiel_0001.jpg'

...


singlefaces: 13233x2 cell

first colomn -> top left corner x, top left corner y, bottom right corner x, bottom right y, confedence

second colomn -> left eye x, right eye x, nose x, left mouth corner x, right mouth corner x, left eye y, right eye y, nose y, left mouth corner y, right mouth corner y

[70.179192,59.815624,167.02457,188.89151,0.99994123]	[108.09567,147.42271,125.68214,104.76254,140.87598,108.76411,112.88547,143.30652,158.65224,162.09607]

[64.054192,59.424114,164.82796,200.56039,0.99998474]	[100.16895,147.06779,124.00081,94.311928,139.65143,110.94896,118.05266,138.73178,159.50375,165.27783]

...

## facealignment.m

A demo code for face alignment. Change imgSize and coord5points for your own alignment.
Two alignment coordinates (rectangle and square) are provided. 

Ref: https://github.com/ydwen/caffe-face/blob/caffe-face/face_example/extractDeepFeature.m

## 
