I=load('a256.dat');
imshow(I,[0,256]);
[x,y]=size(I);
maximum=I(1,1);
minimum=I(1,1);
for i=1:x
    for j=1:y
        if(maximum<I(i,j))
            maximum=I(i,j);
        end
        if(minimum>I(i,j))
            minimum=I(i,j);
        end
    end
end
threshold=(maximum+minimum)/2;
new=zeros(x,y);
for i=1:x
    for j=1:y
        if(I(i,j)<threshold)
            new(i,j)=0;
        else
            new(i,j)=1;
        end
    end
end
imshow(new,[0,1]);