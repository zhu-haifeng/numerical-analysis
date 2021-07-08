% problem 1

X_p = .75:1:4.75;
answer = zeros(3,5);
for id = 1:length(X_p)
    X = -5:2:5;
    answer(1,id) = Lagrange(X,  1./(X.^2 + 1),  X_p(id));
    X = -5:1:5;
    answer(2,id) = Lagrange(X,  1./(X.^2 + 1),  X_p(id));
    X = -5:.5:5;
    answer(3,id) = Lagrange(X,  1./(X.^2 + 1),  X_p(id));
end
answer1_1 = answer

X_p = [-.95 -.05 .05 .95];
answer = zeros(3,4);
for id = 1:length(X_p)
    X = -1:.4:1;
    answer(1,id) = Lagrange(X,  exp(X),  X_p(id));
    X = -1:.2:1;
    answer(2,id) = Lagrange(X,  exp(X),  X_p(id));
    X = -1:.1:1;
    answer(3,id) = Lagrange(X,  exp(X),  X_p(id));
end
answer1_2 = answer

% problem 2
X_p = [-.95 -.05 .05 .95];
answer = zeros(3,4);
for id = 1:length(X_p)
    X = -1:.4:1;
    answer(1,id) = Lagrange(X,  1./(X.^2 + 1),  X_p(id));
    X = -1:.2:1;
    answer(2,id) = Lagrange(X,  1./(X.^2 + 1),  X_p(id));
    X = -1:.1:1;
    answer(3,id) = Lagrange(X,  1./(X.^2 + 1),  X_p(id));
end
answer2_1 = answer

X_p = [-4.75 -.25 .25 4.75];
answer = zeros(3,4);
for id = 1:length(X_p)
    X = -5:2:5;
    answer(1,id) = Lagrange(X,  exp(X),  X_p(id));
    X = -5:1:5;
    answer(2,id) = Lagrange(X,  exp(X),  X_p(id));
    X = -5:.5:5;
    answer(3,id) = Lagrange(X,  exp(X),  X_p(id));
end
answer2_2 = answer

% problem 5
X_p = [5 50 115 185];
answer = zeros(4,4);
for id = 1:length(X_p)
    X = [1 4 9];
    answer(1,id) = Lagrange(X,  sqrt(X),  X_p(id));
    X = [36 49 64];
    answer(2,id) = Lagrange(X,  sqrt(X),  X_p(id));
    X = [100 121 144];
    answer(3,id) = Lagrange(X,  sqrt(X),  X_p(id));
    X = [169 196 225];
    answer(4,id) = Lagrange(X,  sqrt(X),  X_p(id));
end
answer4 = answer
