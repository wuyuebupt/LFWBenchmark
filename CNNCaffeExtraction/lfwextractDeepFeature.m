clear;clc;

% need add your own caffe 
addpath('PATHTOCAFFEROOT/matlab');
caffe.reset_all();

% load face model and creat network
caffe.set_device(0);
caffe.set_mode_gpu();
model = './face_deploy.prototxt';
% model downloaded from "https://github.com/ydwen/caffe-face"
weights = '../Models/face_model.caffemodel';

net = caffe.Net(model, weights, 'test');

% load face image, and align to 112 X 96
imgSize = [112, 96];
coord5points = [30.2946, 65.5318, 48.0252, 33.5493, 62.7299; ...
                51.6963, 51.5014, 71.7366, 92.3655, 92.2041];

% load LFW facelandmarks

load ('../LFWFaces/lfwcenterfaces.mat');

lfwfeatures=cell(0);

% loop for the whole dataset instead two demo images
%  for i = 1:length(imglist)
for i = 1:2
    disp(i);
    tic;
image = imread(imglist{i});
facial5points=double(reshape( singlefaces{i,2},[5,2])');

Tfm =  cp2tform(facial5points', coord5points', 'similarity'); 
cropImg = imtransform(image, Tfm, 'XData', [1 imgSize(2)],...
                                  'YData', [1 imgSize(1)], 'Size', imgSize);

% transform image, obtaining the original face and the horizontally flipped one
if size(cropImg, 3) < 3
   cropImg(:,:,2) = cropImg(:,:,1);
   cropImg(:,:,3) = cropImg(:,:,1);
   
   
   
end
cropImg = single(cropImg);
cropImg = (cropImg - 127.5)/128;
cropImg = permute(cropImg, [2,1,3]);
cropImg = cropImg(:,:,[3,2,1]);

cropImg_(:,:,1) = flipud(cropImg(:,:,1));
cropImg_(:,:,2) = flipud(cropImg(:,:,2));
cropImg_(:,:,3) = flipud(cropImg(:,:,3));

% extract deep feature
res = net.forward({cropImg});
res_ = net.forward({cropImg_});
deepfeature = [res{1}; res_{1}];
lfwfeatures{i} = deepfeature;
toc;
end

caffe.reset_all();


% save features for evaluation
save lfwfeatures.mat lfwfeatures imglist;
