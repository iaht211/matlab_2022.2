U = [3 4 5 ; 0 2 -3 ; 0 0 5];
n=3;
b = [7 ; 8 ; 11];
x = zeros(n,1);
for i = n:-1:1
    x(i) = b(i)/U(i,i);
    j = [1:i-1]';
    b(j) = b(j) - x(i)*U(j,i);

 endfor
