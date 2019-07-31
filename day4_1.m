clc;
I=load('b256.dat');
figure(1),imshow(I,[0,255]);
a=I(1,1);
b=I(1,1);
[x,y]=size(I);
for i=1:x
    for j=1:y
        if(I(i,j)<=a)
            a=I(i,j);
        end
        if(I(i,j)>b)
            b=I(i,j);
        end
    end
end

c=0;
d=100;
newim=zeros();
for i=1:x
    for j=1:y
        newim(i,j)=I(i,j)-a;
        newim(i,j)=floor(newim(i,j)*(d-c)/(b-a));
        newim(i,j)=newim(i,j)+c;
    end
end
figure(2),imshow(newim,[0,255]);
%1st pass of histogram equalization
freq=zeros(256,1);
freq_prob=zeros(256,1);
cumulative=zeros(256,1);
cdf=zeros(256,1);
final=zeros(256,1);
[p,q]=size(newim);
for i=1:p
    for j=1:q
        value=newim(i,j);
        freq(value+1)=freq(value+1)+1;
        freq_prob(value+1)=freq(value+1)/(256*256);
    end
end
sum=0;

for i=1:size(freq_prob)
   sum=sum+freq(i);
   cumulative(i)=sum;
   cdf(i)=cumulative(i)/(256*256);
   final(i)=round(cdf(i)*255);
end
for i=1:p
    for j=1:q
            newim(i,j)=final(newim(i,j)+1);
    end
end
figure(3),imshow(newim,[0,255]);
%2nd pass of histogram equalization
freq=zeros(256,1);
freq_prob=zeros(256,1);
cumulative=zeros(256,1);
cdf=zeros(256,1);
final=zeros(256,1);
[p,q]=size(newim);
for i=1:p
    for j=1:q
        value=newim(i,j);
        freq(value+1)=freq(value+1)+1;
        freq_prob(value+1)=freq(value+1)/(256*256);
    end
end
sum=0;

for i=1:size(freq_prob)
   sum=sum+freq(i);
   cumulative(i)=sum;
   cdf(i)=cumulative(i)/(256*256);
   final(i)=round(cdf(i)*255);
end
for i=1:p
    for j=1:q
            newim(i,j)=final(newim(i,j)+1);
    end
end
figure(4),imshow(newim,[0,255]);