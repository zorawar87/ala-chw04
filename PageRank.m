clc;
clear;

Data = importdata('NotreDame.txt');
N = max(Data(:));
A = Adjacency(Data);

alphas = [0.1 0.05 0.2];
for alpha = alphas
  
  fprintf("+======================+\n");
  fprintf("|  For alpha: %.5f  |\n",alpha);
  PI = Transition(A, alpha);
  [v,l] = PowerMethod(PI, randi(N,N,1), 5);
  PrintTopFive(v);
end