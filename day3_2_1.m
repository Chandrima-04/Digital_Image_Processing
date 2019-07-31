I=load('b256.dat');
figure(1),imshow(I,[0,256]);
[x,y]=size(I);
e1 = input('Enter the value of epsilon\n');
c1 =input('Enter the value of c\n');
new3=zeros(x,y);
p=1;
for k=1.8:.1:2.5
    for i=1:x
        for j=1:y
             new3(i,j)=c*((e+I(i,j))^k);
        end
    end
    p=p+1;
    figure(p),imshow(mat2gray(new3));
end

