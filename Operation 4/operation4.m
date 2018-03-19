% IQahsan %Operation 4
% Detect Skin diseases and knee-bone using Histogram equalization and Negative filtering

I = imread('xyz.jpg'); %skin1.jpg is also another input image
I_gray = rgb2gray(I); % Converting to Gray level in order to apply histogram equalization
I_hist = histeq(I_gray); % Histogram equalization
I_Negative = imcomplement(I_hist); % Taking the negative of the image

%plot
figure;imshow(I), title('Original picture');
figure;imshow(I_gray), title('RGB to Gray');
figure;imshow(I_hist), title('Histogram equalized'); imwrite(I_hist,'output_1.jpg');
figure;imshow(I_Negative), title('Negative'); imwrite(I_Negative,'output_2.jpg');