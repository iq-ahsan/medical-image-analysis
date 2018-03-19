% color image processing 
%change rgb color space into hsv then apply histequl to intensity

I = imread('cancer3.jpg'); % 'cancer3.jpg' is another input image

% Apply Histogram equalization function to the input image in RGB space
I_R = histeq(I(:,:,1));
I_G = histeq(I(:,:,2));
I_B = histeq(I(:,:,3));
I2 = cat(3,I_R,I_G,I_B); % Concatenate the R,G,B components
%using intensityeq function
J = intensityeq(I); % The function increases the intensity value in HSV space

%plot and write images
figure;imshow(I);title('The original picture');
figure;imshow(I2);title('Histogram equalized picture'); imwrite(I2, 'output_1.png');
figure;imshow(J);title('Intensity equalized in HSV space'); imwrite(J, 'output_2.png');
