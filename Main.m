
%I=imread('C:\Program Files\MATLAB\R2014b\toolbox\vision\visiondata\cohn-kanade\train\S052\004\S052_004_00115717.png');
clc;
capture_face();
I=imread('i.jpg');
I=rgb2gray(I);
[f1,f2,f3]=detect_face(I);
Train=[f1,f2,f3];
Training=load('Training.mat');
predict=svm.predict(Training.Model,Train);
if predict==1
    disp('Happy');
elseif predict==2
    disp('Sad');
elseif predict==3
    disp('Surprise');
end

delete(instrfind(('Port'),('COM3')))
arduino=serial('COM3','BaudRate',9600);
fopen(arduino);
while 1
    fprintf(arduino,predict);
end
fclose(arduino);
delete(instrfind(('Port'),('COM3')))