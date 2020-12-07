%Function to capture image
%and write(save) for further
%processing
function capture_face()

    %creating webcam object
    hCamera = webcam;
    frames = 20;
    
    %generating a continuous sequence of images(live video input)
    for i = 1:frames
        vid_img = snapshot(hCamera);
        imshow(vid_img);
    end 
    %saving the captured file
    imwrite(vid_img,'i.jpg')
    
end