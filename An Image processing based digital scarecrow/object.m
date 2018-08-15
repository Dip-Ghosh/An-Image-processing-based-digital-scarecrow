
function obj=object();

for i=1:1;   
camList =webcamlist
cam =webcam(1);
%camera preview
 preview(cam);  
%pause for 5 seconds
pause(5);
Img =snapshot(cam);
fname=strcat('object',num2str(i),'.jpg');
%image write
imwrite(Img,fname,'jpg');
clear  cam ;
end 

end