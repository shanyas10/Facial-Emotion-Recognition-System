function [i1, i2, i3]=detect_facialfeature(I)
I=imread('i.jpg');
[n,m,d]=size(I);   % im is your image
id=fix(n/3);
i1=I(1:id,:,:);
i2=I(id+1:2*id,:,:);
i3=I(2*id+1:n,:,:);
