function px = Lagrange(X,Y,x)
if(length(X) ~=length(Y))
    error('check the length of X and Y')
end
y = 0;
k = 0;
n = length(X) - 1;
while(k<=n)
    l = 1;
    for j = 0:n
        if(j == k)
            continue
        end
        l = l * (x - X(j+1)) / (X(k+1) - X(j+1));
        
    end
    y = y + l*Y(k+1);
    k = k + 1;
end
px = y;