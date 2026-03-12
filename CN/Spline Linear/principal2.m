clc 
clear
close all
a=0; b=pi/2;
n=20;
global typex
typex = 'ex1';
T=TrapezoidalRule(a,b,n)