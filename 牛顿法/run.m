fun1 = @(x)cos(x)-x;
[res1,a,b] = newton(fun1,pi/4,1e-6,1e-4,10)

fun2 = @(x)exp(-x) - sin(x);
[res2,a,b] = newton(fun2,.6,1e-6,1e-4,10)

fun3 = @(x)x-exp(-x);
[res3,a,b] = newton(fun3,.5,1e-6,1e-4,10)


fun4 = @(x)x^2-2*x*exp(-x)+exp(-2*x);
[res4,a,b] = newton(fun4,.5,1e-6,1e-4,10)
% disp('res1')
% disp(res1,a,b)
% disp('res2')
% disp(res2,a,b)
% disp('res3')
% disp(res3,a,b)
% disp('res4')
% disp(res4,a,b)