load lfwcenterfaces.mat;


%% rectangle alignment
imgSize = [112, 96];
coord5points = [30.2946, 65.5318, 48.0252, 33.5493, 62.7299; ...
                51.6963, 51.5014, 71.7366, 92.3655, 92.2041];

for i = 1:2
    image = imread(imglist{i});
    facial5points=double(reshape( singlefaces{i,2},[5,2])');
    Tfm =  cp2tform(facial5points', coord5points', 'similarity'); %#ok<DCPTF>
    cropImg = imtransform(image, Tfm, 'XData', [1 imgSize(2)],...
                                  'YData', [1 imgSize(1)], 'Size', imgSize);
    imshow(cropImg)
    k = waitforbuttonpress;
end


%% square alignment
imgSize = [256, 256];
coord5points = [94.0770,  173.6142,  133.0649,   94.0770,  173.6142; ...
                105.3139, 105.3139,  158.3286,  199.5178,  199.5178];
            
for i = 1:2
    image = imread(imglist{i});
    facial5points=double(reshape( singlefaces{i,2},[5,2])');
    Tfm =  cp2tform(facial5points', coord5points', 'similarity'); %#ok<DCPTF>
    cropImg = imtransform(image, Tfm, 'XData', [1 imgSize(2)],...
                                  'YData', [1 imgSize(1)], 'Size', imgSize);
    imshow(cropImg)
    k = waitforbuttonpress;
end          