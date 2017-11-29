#clc;
clear;

N=1000;
Data = importdata('NotreDame.txt');
A = Adjacency(Data);

alpha = 0.1;
alpha = 0.05;
alpha = 0.2;
PI = Transition(A, alpha);
[v,l] = PowerMethod(PI, randi(N,N,1), 100);
[V,D] = eig(PI);
fprintf("empricial: %f\n",l);
fprintf("actualxxx: %f\n",max(D(:)));
PrintTopFive(v);
PrintTopFive(V(:,1));