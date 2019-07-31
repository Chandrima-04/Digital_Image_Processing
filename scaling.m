% write a program to implement image scaling operation in horizontal
% direction by an amount of 1.4 unit and vertical direction by an amount of 1.6 unit
X= load('b256.dat');
[m n]= size(X);
y = zeros(floor(m*2.1)+1,floor(n*1.8)+1);
temp = [0;0;0];
filter = [2.1 0 0;0 1.8 0;0 0 1];
for i =1:m
    for j= 1:n
        temp = filter*[i;j;1];
            y(floor(temp(1)),floor(temp(2)))= X(i,j);
    
    end;
end;
imshow(mat2gray(y));
figure(2),imshow(mat2gray(X));
