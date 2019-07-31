I=load('b256.dat');
figure(1),imshow(I,[0,256]);
[x,y]=size(I);
a = input('Enter a\n');
b = input('Enter b\n');
new=zeros(x,y);
for i=1:x
    for j=1:y
        if(a>=I(i,j))
            new(i,j)=0;
        elseif(b<=I(i,j))
            new(i,j)=0;
        else
            new(i,j)=1;
        end
    end
end
figure(2),imshow(new,[0,1]);