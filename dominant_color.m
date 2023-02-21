function [X1,X2,X3]=dominant_color(image)


X  = rgb2hsv(image);
X1=X(:,:,1);
X2=X(:,:,2);
X3=X(:,:,3);
[x ,y, z]=size(X);

% figure(1)
% subplot(131)
% imshow(X1);
% subplot(132)
% imshow(X2)
% subplot(133)
% imshow(X3)

for i=1:x
    for j= 1:y
        if ((X2(i,j)<1/16) || (X3(i,j)< 1/6))
            X1(i,j)=2;
            X2(i,j)=2;
            X3(i,j)=2;
           
        end
    end
end


%figure(1)
%subplot(131)
%imshow(X1);
%subplot(132)
%imshow(X2)
%subplot(133)
%imshow(X3)
%a=sum(sum(X3==0))
 X1(X1==2) = [];
 X2(X2==2) = [];
 X3(X3==2) = [];
