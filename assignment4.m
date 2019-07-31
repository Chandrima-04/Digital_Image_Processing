I=load('b256.dat');
imshow(I,[0,256]);
[x,y]=size(I);
max=0;
sum=0;
for i=1:x
    for j=1:y
        A=de2bi(I(i,j),8);
        for p=1:8
            if(A(p)==1)
                A(p)=0;
            else
                A(p)=1;
            end
        end
        %sum=0;
        %for p=1:8
        %sum=sum+(A(p)*(2.^(p-1)));
        %J(i,j)=sum;
        %end
    end
end
figure(1),imshow(uint8(I));