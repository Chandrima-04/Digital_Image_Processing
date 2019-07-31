A=load('f256.dat');
figure(1),imshow(A,[0,255]);
I1=A;
I=zeros(size(A));
I2=zeros(size(A));
F1=[1 1 1;1 -8 1; 1 1 1];
F2=[0 1 0;1 -4 1;0 1 0];
A=padarray(A,[1,1]);
A=double(A);
for i=1:size(A,1)-2
    for j=1:size(A,2)-2
        I(i,j)=sum(sum(F1.*A(i:i+2,j:j+2)));
    end
end
I=uint8(I);
figure(2),imshow(I);title('Filtered Image');
for i=1:size(A,1)-2
    for j=1:size(A,2)-2
        I(i,j)=sum(sum(F2.*A(i:i+2,j:j+2)));
    end
end
I=uint8(I);
figure(3),imshow(I);title('Filtered Image with new mask');
