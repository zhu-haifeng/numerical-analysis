function [ R ] = rombergIntegration( f, a, b, epsilon)
% epsilon is the tolerance for each iteration
h = (b-a);
i = 1;
err = epsilon + 1;
R = zeros(5,4);
R(1,1) = h * (f(a)+f(b))/2;
while(err > epsilon)
    i = i + 1;
    sum = 0;
    for k=1:2^(i-2)
        sum = sum + f(a + (k-.5)*h);
    end
    R(i,1) = R(i-1,1)/2 + sum * h / 2;
    
    if(i>=4)
        j_end = 4;
    else
        j_end = i;
    end
    
    for j=2:j_end
        R(i,j) = R(i,j-1) + (R(i,j-1)-R(i-1,j-1))/(4^(j-1)-1);
        if(i>=5 && j==4)
            err = abs(R(i,j) - R(i-1,j));
            if err < epsilon
                return
            end
        end
    end
    h = h/2;
end
    
        
