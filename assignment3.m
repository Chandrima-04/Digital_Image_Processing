I=load('b256.dat');
imshow(I,[0,255]);
[x,y]=size(I);
max=I(1,1);
for i=1:x
    for j=1:y
        if(max<I(i,j))
            max=I(i,j);
        end
    end
end
output=zeros();
for i=1:x
    for j=1:y
        output(i,j)=max-1-I(i,j);
    end
end
imshow(output,[0,255]);