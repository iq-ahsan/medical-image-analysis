%IQahsan % Operation 5
% Finding anomalies in Lungs X-rays using histogram equalization and laplacian

I = imread('lung2.png'); % 'lung1.png' is another input image

I2 = histeq(I); % Histogram equalization
% DIfferent valued kernels for laplacian filtering
K1 = [-1 -1 -1;-1 8.7 -1;-1 -1 -1];
K2 = [-1 -1 -1;-1 9 -1;-1 -1 -1];

% Applying the Laplacian filter
J1 = imfilter(I2,K1) ;
J2 = imfilter(I2,K2) ;

% Showing all the results
figure(1), imshow(I), title ('Original image');
figure(2), imshow(I2), title('Histogram equalized image'), imwrite(I2,'output1.jpg');
figure(3), imshow(J1), title('center value is 8.7 '),imwrite(J1,'output2.jpg');
figure(4), imshow(J2), title('center value is 9 '),imwrite(J2,'output3.jpg');

