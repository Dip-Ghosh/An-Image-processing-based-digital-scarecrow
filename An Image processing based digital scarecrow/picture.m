
function a = picture();

camList =webcamlist
cam =webcam(1);
%camera preview
 preview(cam);
%pause for 5 seconds
pause(5);
 
%snapshot
Img =snapshot(cam);
%file name
fname=strcat('background.jpg');
imwrite(Img,fname,'jpg');   
clear  cam ;
back();

end


