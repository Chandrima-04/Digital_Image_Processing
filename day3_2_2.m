I=load('b256.dat');
figure(1),imshow(I,[0,256]);
[x,y]=size(I);
c =input('Enter c\n');
new6=zeros(x,y);
new7=zeros(x,y);
for i=1:x
    for j=1:y
         new6(i,j)=c*log(1+I(i,j));
         new7(i,j)=exp(new6(i,j)/c)-1;
    end
end
new6=mat2gray(new6);
new7=mat2gray(new7);
figure(2),imshow(new6);
figure(3),imshow(new7);