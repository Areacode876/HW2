Kernel = 9;
w = fspecial('average', Kernel);
Image=imread('rice.tif');
figure;
g1=imfilter(Image,w,'conv',0,'same');

g1=conv2(Image,w,'same');
g1=uint8(conv2(Image,w,'same'));
g1=uint8(filter2(Image,w,'same'));
figure();