A=load('o256.dat');
figure(1),imshow(A,[0,255]);
I1=A;
a = input('Enter a\n');
I=zeros(size(A));
I2=zeros(size(A));
F1=[-1 -1 -1;-1 a+8 -1; -1 -1 -1];
A=padarray(A,[1,1]);
A=double(A);
for i=1:size(A,1)-2
    for j=1:size(A,2)-2
        I(i,j)=sum(sum(F1.*A(i:i+2,j:j+2)));
    end
end
I=uint8(I);
figure(2),imshow(I);title('Filtered Image');