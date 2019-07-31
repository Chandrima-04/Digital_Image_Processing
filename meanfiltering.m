clc;
I=load('b256.dat');
figure(1),imshow(I,[0,255]);
title('ORIGINAL IMAGE');
d=0.02;
I= uint8(I);
J=imnoise(I,'salt & pepper',d);
figure(2),imshow(J);
title('IMAGE WITH SALT AND PEPPER NOISE');
[x,y]=size(J);
Inew=zeros(x+2,y+2);
newimage=zeros(x,y);
 for i=1:x
    for j=1:y
        Inew(i+1,j+1)=J(i,j);
    end
 end
for i= 1:x
    for j=1:y
        kernel=zeros(9,1);
        index=1;
        sum=0;
        for p=1:3
            for q=1:3
                kernel(index)=Inew(i+p-1,j+q-1);
                sum=sum+kernel(index);
                index=index+1;
            end
        end 
       newimage(i,j)=1/9*sum;
    end
end 
figure(3),imshow(newimage,[0,255]);
title('IMAGE AFTER MEAN FILTERING');