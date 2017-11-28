clc;
clear all;

N=1000;

Data = importdata('NotreDame.txt');
A = Adjacency(Data);
PI = Transition(A, 0.1);
[v,l] = PowerMethod(A, randi(N,1000,1), 3);