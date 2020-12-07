function LBP= lbp(I)
    w=size(I,1);
    h=size(I,2);
    
% Local Binary Patterns   
    for i=2:w-1
        for j=2:h-1
            J0=I(i,j);
            I1(i-1,j-1)=I(i-1,j-1)>J0;
            I1(i-1,j)=I(i-1,j)>J0;
            I1(i-1,j+1)=I(i-1,j+1)>J0; 
            I1(i,j+1)=I(i,j+1)>J0;
            I1(i+1,j+1)=I(i+1,j+1)>J0; 
            I1(i+1,j)=I(i+1,j)>J0; 
            I1(i+1,j-1)=I(i+1,j-1)>J0; 
            I1(i,j-1)=I(i,j-1)>J0;
            LBP(i,j)=I1(i-1,j-1)*2^7+I1(i-1,j)*2^6+I1(i-1,j+1)*2^5+I1(i,j+1)*2^4+I1(i+1,j+1)*2^3+I1(i+1,j)*2^2+I1(i+1,j-1)*2^1+I1(i,j-1)*2^0;
        end
    end
    %I2 = extractLBPFeatures(I,'Upright',false);
    %figure;imshow(I);title('Original Image');
    %figure;imshow(LBP);title('Classify Image Using LBP');
    %figure;imshow(I2);title('Classify Image Using LBP 1');
    %figure;imhist(LBP);title('Histogram Image');
end