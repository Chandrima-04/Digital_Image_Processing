clc;
I=load('b256.dat');
figure(1),imshow(I,[0,255]);
title('ORIGINAL IMAGE');
[x,y]=size(I);
d=0.02;
I= uint8(I);
J=imnoise(I,'salt & pepper',d);
figure(2),imshow(J);
title('IMAGE WITH SALT AND PEPPER NOISE');
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
                index=index+1;
            end
        end 
       median=sort(kernel);
       newimage(i,j)=median(5);
    end
end 
figure(3),imshow(newimage,[0,255]);
title('IMAGE AFTER MEAN FILTERING');
