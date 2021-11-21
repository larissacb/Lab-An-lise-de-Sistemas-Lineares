%Laboratorio de Analise de Sistemas Lineares - Eng. Eletrica
%Pratica 01 - Revisao Matlab
%03/11/2021
%Gabriel Arantes e Larissa Braga
clc
clear all
close all

%%
%Questao 1
%Definicao das variaveis
A = [exp(4),log(5);sqrt(6),1+5*1i];
B = [pi, log10(5); 3i, 1+3*i];

%%
%Item a
disp("Item a");
A+B

%%
%Item B
disp("Item b");
A*B

%%
%Item C
disp("Item c");
A^2

%%
%Item D
disp("Item d");
A.'

%%
%Item E
disp("Item e");
inv(A)

%%
%Item F
disp("Item f");
(B.')*(A.')

%%
%Item G
disp("Item g");
A^2+B^2-A*B

%%
%Item H
disp("Item h");
[V, D] = eig(A);
disp(D);

%%
%Item I
disp("Item i");
A.*B

%%
%Questao 2

%Definicao das variaveis
A = [4,3,2; -6,0,8; 0,-4,-12];
B = [5;8;0];

A\B

%%
%Questao 3
x1 = 0:0.2:40;
x2 = 0:0.01:40;
y1 = exp(-0.2.*x1).*sin(5.*x1);
y2 = exp(-0.2.*x2).*sin(5.*x2);

figure(1)
subplot(2, 1, 1);
plot(x1, y1, 'm');
subplot(2, 1, 2);
plot(x2, y2, 'b');
suptitle('Questão 3');

%%
%Questao 4
m = {1,2,3,4,5,6; 
    'a','b','c','d','e','f';
    0.5,0.4,5.7,22.2,17.3,2.1;
    5,4,20,10,15,1;
    0,0,0,0,0,0};

    soma = 0;
for i=1:size(m,2)
   m{5,i} = m{3,i}*m{4,i};
   soma = soma + m{5,i};
end
disp(soma);



