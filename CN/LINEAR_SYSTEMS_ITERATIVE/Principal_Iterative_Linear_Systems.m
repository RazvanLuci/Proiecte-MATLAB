%Patrulescu UTCN 2024
clc
clear
global typex
typex='ex2';
[A,b,exact,xo]=DataSystem;
fprintf('The matrix of the system\n')
disp('A=') 
disp(A)
fprintf('The right hand  side (as row vector) of the system \n')
disp('b=')
disp(b)
fprintf('The exact solution (as row vector) of the system \n')
disp('exact=')
disp(exact)
fprintf('The initial value (as row vector) of the methods \n')
disp('Initial Value=')
disp(xo)
e=10^(-10); % constant used in stop condition
fprintf('The constant in stop condition is %s\n\n',num2str(e))

%JACOBI METHOD
fprintf('JACOBI METHOD\n')
tic
[solj,stepsj]=JacobiMethod(A,b,xo,e);
timej=toc;
fprintf('The approximative method with Jacobi Method, obtained in %d steps,is\n',stepsj)
disp('Approx. Sol (Jacobi)=')
disp(solj)
fprintf('The exectution time for Jacobi Method is %.7f\n',timej)
fprintf('-------------------------------------------\n\n')

%GAUSS-SEIDEL METHOD
fprintf('GAUSS-SEIDEL METHOD\n')
tic
[solgs,stepsgs]=GaussSeidelMethod(A,b,xo,e);
timegs=toc;
fprintf('The approximative method with Gauss-Seidel Method, obtained in %d steps,is\n',stepsgs)
disp('Approx. Sol (Gauss Seidel)=')
disp(solgs)
fprintf('The exectution time for Gauss-Seidel Method is %.7f\n',timegs)
fprintf('-------------------------------------------\n\n')

