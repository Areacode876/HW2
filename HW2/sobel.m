clear all; close all
H =fspecial('sobel')
Image=imread('rice.tif');

H1_F2=imfilter(im2double(Image),H,'conv');%% truncate the double to uint8, loose negative
H1_F3=imfilter(im2double(Image),H','conv');
figure;
imshowpair(abs(H1_F2),abs(H1_F3),'montage'); title ('Sobel operator')

H1_F=abs(H1_F2)+abs(H1_F3);% simple computation
figure;
imshow(H1_F,[]);

min_value=min(min(Image));
max_value=max(max(Image));
new_intensity=floor(255*(((Image)- min_value)./(max_value-min_value)));
figure;
imshow(uint8(new_intensity));
