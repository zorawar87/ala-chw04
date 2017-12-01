clc;
clear;

N=1000;
Data = importdata('NotreDame.txt');
A = Adjacency(Data);

alphas = [0.1 0.05 0.2];
for alpha = alphas
  
  fprintf("+======================+\n");
  fprintf("|  For alpha: %.5f  |\n",alpha);
  PI = Transition(A, alpha);
  [v,l] = PowerMethod(PI, randi(N,N,1), 5);
  PrintTopFive(v);
end