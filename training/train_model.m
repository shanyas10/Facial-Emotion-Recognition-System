
function train_model()
    clc;
    TrainMat = zeros(444,768);
    srcFiles = dir('C:\Users\Sanya\Documents\MATLAB\Emore\happy\*.png');  % the folder in which the training images exists
    j=0;
    for i = 1 : length(srcFiles)   
        filename = strcat('C:\Users\Sanya\Documents\MATLAB\Emore\happy\',srcFiles(i).name);
        I = imread(filename);
        [f1,f2,f3]=detect_face(I);
        j=j+1;
        TrainMat(j,:)=[f1,f2,f3];
        %figure, imshow(I);
    end

    srcFiles = dir('C:\Users\Sanya\Documents\MATLAB\Emore\sad\*.png');  % the folder in which the training images exists
    for i = 1 : length(srcFiles)
        filename = strcat('C:\Users\Sanya\Documents\MATLAB\Emore\sad\',srcFiles(i).name);
        I = imread(filename);
        [f1,f2,f3]=detect_face(I);
        j=j+1;
        TrainMat(j,:)=[f1,f2,f3];
        %figure, imshow(I);
    end

    srcFiles = dir('C:\Users\Sanya\Documents\MATLAB\Emore\surp\*.png');  % the folder in which the training images exists
    for i = 1 : length(srcFiles)
        filename = strcat('C:\Users\Sanya\Documents\MATLAB\Emore\surp\',srcFiles(i).name);
        I = imread(filename);
        [f1,f2,f3]=detect_face(I);
        j=j+1;
        TrainMat(j,:)=[f1,f2,f3];
        %figure, imshow(I);
    end
    Group = zeros(444,1);  % gives you a matrix of zeros with 335 rows and 1 column
    Group(1:180)   = 1;      % set first 180 entries to +1
    Group(181:335) = 2;    % set next 150 entries to +2
    Group(336:end) = 3;      % set last 180 entries to +3
    Model = svm.train(TrainMat,Group);
    save Training.mat;
end