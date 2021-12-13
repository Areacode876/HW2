close all
Image=imread('rice.tif');

% robert operation 
H=[-1,0;0 1], 
H1_v=conv2(Image, H,'same');
H1_h=conv2(Image, H','same');% transpose of H to get horizontal direction
H1_F=sqrt(H1_v.^2+H1_h.^2);% norm/ amplitude /magnitude 
figure; 
imshow(H1_F,[]); title ('Robert operator Magnitude')
figure; 
imshowpair(Image, H1_F,'montage'); title ('Roberts operator Magnitude')
figure; 
imshow(abs(H1_v),[]); title ('Robert operator V direction')
figure; 
imshow(abs(H1_h),[]); title ('Robert operator H direction')
figure; 
imshow(abs(H1_h)+abs(H1_v),[]); title ('Robert operator est. Magnitude')
figure;
min_value=min(min(Image));
max_value=max(max(Image));
new_intensity=floor(255*(((Image)- min_value)./(max_value-min_value)));
figure;
imshow(uint8(new_intensity));
