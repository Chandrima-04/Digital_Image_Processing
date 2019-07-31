% Write a program to calculate del(x) and del(y) for each pixel of an input
% image f(x,y) using gradient operator (1,-1). Replace each pixel point by
% |del(x)+del(y)| and then implement image-sharpening operation.

A=load('f256.dat');
figure(1),imshow(A,[0,255]);
[x,y]=size(A);
row_mask=[1 -1];
column_mask=[1;-1];
for i=1:x-1;
    for j=1:y-1;
        gx=abs(A(i,j)*row_mask(1,1)+A(i+1,j)*row_mask(1,2));
        gy=abs(A(i,j)*column_mask(1,1)+A(i,j+1)*column_mask(2,1));
        A(i,j)=gx+gy;
    end;
end;
A=uint8(A);
figure(2),imshow(A,[0,255]);