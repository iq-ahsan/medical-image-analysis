function [ J ] =intensityeq( I )

hsvimg = rgb2hsv(I); % Convert into HSV image
Hchannel = hsvimg(:,:,1);
Schannel = hsvimg(:,:,2);
Vchannel = histeq(hsvimg(:,:,3)); %only apply histeq on the value component.
K = cat(3,Hchannel,Schannel,Vchannel);
J = hsv2rgb(K);

end
