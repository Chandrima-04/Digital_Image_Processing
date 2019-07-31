I=load('f256.dat');
figure(1),imshow(I,[0,255]);
[x,y]=size(I);
a=I(1,1);
b=I(1,1);
for i=1:x
    for j=1:y
        if(a<I(i,j))
            a=I(i,j);
        if(b>I(i,j))
            b=I(i,j);
        end
        end
    end
end
c=50;
d=100;
newim=zeros();
for i=1:x
    for j=1:y
        newim(i,j)=I(i,j)-a;
        newim(i,j)=newim(i,j)*(d-c)/(b-a);
        newim(i,j)=newim(i,j)+c;
    end
end
figure(2),imshow(newim,[0,255]);