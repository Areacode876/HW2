img = imread('rice.tif');
subplot(3,4,1);
imshow(img);
title('Original Image');

%a)
h=ones(3,3)/9;
avg3 = imfilter(img,h);
subplot(3,4,5);
imshow(avg3);
title('3x3 Average filter');
rmse1=sqrt(immse(img,avg3))
xlabel(strcat('RMSE: ', num2str(rmse1)))

med3 = medfilt2(img,[3 3]);
subplot(3,4,9);
imshow(med3);
title('3X3 Median Filter');
rmse2 =sqrt(immse(img,med3))
xlabel(strcat('RMSE: ', num2str(rmse2)))

%b)
h=ones(9,9)/81;
avg9 = imfilter(img,h);
subplot(3,4,7);
imshow(avg9);
title('9x9 Average filter');
rmse3=sqrt(immse(img,avg9))
xlabel(strcat('RMSE: ', num2str(rmse3)))

med4 = medfilt2(img,[9 9]);
subplot(3,4,11);
imshow(med4);
title('9X9 Median Filter');
rmse4 =sqrt(immse(img,med4))
xlabel(strcat('RMSE: ', num2str(rmse4)))

