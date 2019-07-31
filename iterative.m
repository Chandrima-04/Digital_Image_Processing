% Write a program to implement iterative thresholding operation for
% segmentation of a grayscale image
clc;
I=load('b256.dat');
figure(1),imshow(I,[0,255]);
[x,y]=size(I);
m1=(I(1,1)+I(1,256)+I(256,1)+I(256,256))/4;
m2=0;
for i=1:x
    for j=i:y
        m2=m2+I(i,j);
    end
end
m2=(m2-m1*4)/(256*256-4);
Told=0;
Tnew=round((m1+m2)/2);
while(Told~=Tnew)
    sum1=0;
    sum2=0;
    c1=0;
    c2=0;
    for i=1:x
        for j=1:y
            if(I(i,j)<Tnew)
                sum1=sum1+I(i,j);
                c1=c1+1;
            end
            if(I(i,j)>=Tnew)
                sum2=sum2+I(i,j);
                c2=c2+1;
            end
        end
    end
            m1=sum1/c1;
            m2=sum2/c2;
            Told=Tnew;
            Tnew=round((m1+m2)/2);
end
new1=zeros(x,y);
new2=zeros(x,y);
    for i=1:x
        for j=1:y
            if(I(i,j)<Tnew)
                new1(i,j)=0;
                new2(i,j)=1;

            else
                new1(i,j)=1;
                new2(i,j)=0;
            end
        end
    end
figure(2),imshow(new1,[0,1]);
figure(3),imshow(new2,[0,1]);