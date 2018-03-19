%IQahsan % Operation 2 
% Detection of Breast cancer from Mammography pictures using Negative and
% Laplacian filtering.

I = imread('mammo1.pgm'); % 'mammo2.pgm' can also be used as input
I_neg = imcomplement(I); % Transforming the image into Negative
kernel1 = [-1 -1 -1;-1 8.8 -1;-1 -1 -1]; %kernel value with 8.8 in the center
kernel2 = [-1 -1 -1;-1 9 -1;-1 -1 -1];  %kernel value with 9 in the center
output_1 = imfilter(I_neg,kernel1) ; % Laplacian filtering
output_2 = imfilter(I_neg,kernel2) ;

%plotting the results
figure
imshow(I)
title('Original picture');
figure
imshow(I_neg), imwrite(I_neg, 'output1.jpg');
title('Negative of the Original picture');
figure;
imshow(output_1), imwrite(output_1, 'output2.jpg');
title('center value with 8.8 ');
figure;
imshow(output_2), imwrite(output_2, 'output3.jpg');
title('center value with 9 ');
