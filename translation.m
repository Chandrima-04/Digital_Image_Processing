% write a program to implement 2D translation by an amount of 5 units in
% the right and 7 units upwards to each pixel of an input image f(x,y)
A=load('o256.dat');
figure(1),imshow(A,[0,255]);
[x,y]=size(A);
new=zeros(size(A));
for i=8:x
    for j=1:y-5
        new(i-7,j+5)=A(i,j);
    end
end
figure(2),imshow(new,[1,255]);