opts = {};
tmp = {@(x)x^2*exp(x),  0,1,1e-6};opts = [opts;tmp];
tmp = {@(x)exp(x)*sin(x),1,3,1e-6};opts = [opts;tmp];
tmp = {@(x)4/(1+x^2),   0,1,1e-6};opts = [opts;tmp];
tmp = {@(x)1/(1+x),     0,1,1e-6};opts = [opts;tmp];

for i = 1:length(opts)
    res = rombergIntegration(opts{i,:})
end