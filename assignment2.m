I=load('b256.dat');
imshow(I,[0,256]);
[x,y]=size(I);
max=I(1,1);
min=I(1,1);
figure(5),imshow(uint8(I));

%DOWNSAMPLING
new1=zeros();
for i=1:2:256
    for j=1:2:256
        new1((i+1)/2,(j+1)/2)=I(i,j);
    end
end
figure(1),imshow(uint8(new1)); 
new2=zeros();
for i=1:2:128
    for j=1:2:128
        new2((i+1)/2,(j+1)/2)=new1(i,j);
    end
end
figure(2),imshow(uint8(new2));  
new3=zeros();
for i=1:2:64
    for j=1:2:64
        new3((i+1)/2,(j+1)/2)=new2(i,j);
    end
end
figure(3),imshow(uint8(new3));
new4=zeros();
for i=1:2:32
    for j=1:2:32
        new4((i+1)/2,(j+1)/2)=new3(i,j);
    end
end
figure(4),imshow(uint8(new4));

%UPSAMPLING
new5=zeros();
for i=1:32
    for j=1:32
       new5(i,j)=new4(floor((i+1)/2),floor((j+1)/2)); 
    end
end
figure(6),imshow(uint8(new5));
new6=zeros();
for i=1:64
    for j=1:64
       new6(i,j)=new5(floor((i+1)/2),floor((j+1)/2)); 
    end
end
figure(7),imshow(uint8(new6));
new7=zeros();
for i=1:128
    for j=1:128
       new7(i,j)=new6(floor((i+1)/2),floor((j+1)/2)); 
    end
end
figure(8),imshow(uint8(new7));
new8=zeros();
for i=1:256
    for j=1:256
       new8(i,j)=new7(floor((i+1)/2),floor((j+1)/2)); 
    end
end
figure(9),imshow(uint8(new8));