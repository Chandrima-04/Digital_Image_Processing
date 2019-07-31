X= importdata('b256.dat');
[m n]= size(X);
xm = floor(m/2); ym = floor(n/2);
y1 = zeros(m,n);
y2 = zeros(m,n);
y3 = zeros(m,n);
temp = [0;0;0];
u1 = cos(25*pi/180); v1 = sin(25*pi/180);
u2 = cos(45*pi/180); v2 = sin(45*pi/180);
u3 = cos(60*pi/180); v3 = sin(60*pi/180);

filter1 = [u1 -v1 0;v1 u1 0;0 0 1];
filter2 = [u2 -v2 0;v2 u2 0;0 0 1];
filter3 = [u3 -v3 0;v3 u3 0;0 0 1];
for i =1:m
    for j= 1:n
        temp = filter1*[i-xm;j-ym;1]+[xm;ym;1];
        if(floor(temp(1))>0 && floor(temp(2))>0 && temp(1)<m && temp(2)<n)
            y1(floor(temp(1)),floor(temp(2)))= X(i,j);
        end;
        temp = filter2*[i-xm;j-ym;1]+[xm;ym;1];
        if(floor(temp(1))>0 && floor(temp(2))>0 && temp(1)<m && temp(2)<n)
            y2(floor(temp(1)),floor(temp(2)))= X(i,j);
        end;
        temp = filter3*[i-xm;j-ym;1]+[xm;ym;1];
        if(floor(temp(1))>0 && floor(temp(2))>0 && temp(1)<m && temp(2)<n)
            y3(floor(temp(1)),floor(temp(2)))= X(i,j);
        end;
        
    end;
end;
figure(1),imshow(mat2gray(y1));
figure(2),imshow(mat2gray(y2));
figure(3),imshow(mat2gray(y3));
figure(4),imshow(mat2gray(X));
