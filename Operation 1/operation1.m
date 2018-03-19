%IQahsan %Operation 1 % Apply laplacian and edge detection method to
%enhance the retina images

I = imread('retina1.tif'); %input image|| you can use 'retina2.png' also as input
gray_I = rgb2gray(I);
edge_I = edge(gray_I,'Sobel'); % Edge detection using Sobel
figure;imshow(edge_I), imwrite(edge_I, 'output3.jpg'); title ('Edges (Veins and infection in Retina)');
% Using different kernels with different center pixel values 
kernel1 = [-1 -1 -1;-1 8.5 -1;-1 -1 -1];
kernel2 = [-1 -1 -1;-1 9 -1;-1 -1 -1];
kernel3 = [-1 -1 -1;-1 9.7 -1;-1 -1 -1];
% applying the filters
K1 = imfilter(I,kernel1) ;
K2 = imfilter(I,kernel2) ;
K3 = imfilter(I,kernel3) ;

% plotting the results
figure;
subplot(2,2,1)
imshow(I)
title('Original image');
subplot(2,2,2)
imshow(K1)
title('With Center value 8 ');
subplot(2,2,3)
imshow(K2), imwrite(K2, 'output1.jpg');
title('With center value 9 ');
subplot(2,2,4)
imshow(K3), imwrite(K3, 'output2.jpg')
title('With center value  9.7');