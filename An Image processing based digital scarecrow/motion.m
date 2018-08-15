
function m = motion()
tic;
I1 = imread('object1.jpg');

 %% 
ImageMotion();

%%
I2 = imread('object2.jpg');
%  convert images to type double (range from from 0 to 1 instead of from 0 to 255)
Imaged1 = im2double(I1);
Imaged2 = im2double(I2);

% reduce three channel [ RGB ]  to one channel [ grayscale ]
Imageg1 = rgb2gray(Imaged1); 
Imageg2 = rgb2gray(Imaged2);  

% Calculate the Normalized Histogram of Image 1 and Image 2
hn1 = imhist(Imageg1)./numel(Imageg1); 
hn2 = imhist(Imageg2)./numel(Imageg2); 

% Calculate the histogram error/ Difference
f1 = sum((hn1 - hn2).^2);  
%set(handles.text1,'String',f1)
%serialOne=serial('COM1', 'BaudRate', 9600);
%fopen(serialOne);
if f1 >=0.0008571
  
   disp('Change Detected');
   back();
    
end

if f1 < 0.0008571
    disp('Change not Detected');
    back();
    
end
toc;
end