% E lecture 6 alternative using apped and connect
clear all; clc; close all;
K1=3.8;
K2=1.2;
K3=2.5;
K4=0.6;
s=tf('s');
H1=1/s;
H2=1/(s+1);
H3=1/s;
out=1;
dist=1;
% sys=append(K1,K2,K3,K4,H1,H2,H3,dist,out);

% Q = [4 -2 -3; ...
%     5 4 8; ...
%     6 5 0; ...
%     1 5 0; ...
%     2 6 0; ...
%     7 6 0; ...
%     3 7 0; ...
%     9 1 7];
% Input = [4 8]
% Output = [9]
% systotot=connect(sys,Q,Input,Output);
sys=append(K4,(H1),K1,(H2),K2,(H3),K3,out,dist);
Q=[1 -5 -7;...
   2  1  9;...
   3  2  0;...
   4  2  0;...
   5  4  0;...
   6  4  0;...
   7  6  0;...
   8  3  6];
inputs=[1 9];
outputs=[8];
SYS=(connect(sys,Q,inputs,outputs))