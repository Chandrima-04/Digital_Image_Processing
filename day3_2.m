I=load('b256.dat');
figure(1),imshow(I,[0,256]);
[x,y]=size(I);
e = input('Enter epsilon\n');
c =input('Enter c\n');
new1=zeros(x,y);
new2=zeros(x,y);
new4=zeros(x,y);
new5=zeros(x,y);
for i=1:x
    for j=1:y
         new1(i,j)=c*((e+I(i,j))^1.8);
         new2(i,j)=c*((e+I(i,j))^2.5);
         new4(i,j)=((new1(i,j)/c)^(1/1.8))-e;
         new5(i,j)=((new2(i,j)/c)^(1/2.5))-e;
    end
end
new1=mat2gray(new1);
new2=mat2gray(new2);
new4=mat2gray(new4);
new5=mat2gray(new5);
figure(2),imshow(new1);
figure(3),imshow(new2);
figure(4),imshow(new4);
figure(5),imshow(new5);
        