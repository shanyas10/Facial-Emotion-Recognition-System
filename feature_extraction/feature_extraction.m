function f=feature_extraction(I)
    f=zeros(1,256);
    LBP=lbp(I);
    norm = uint8(255*mat2gray(LBP));
    f(1,:)=imhist(uint8(norm));
end

    
    