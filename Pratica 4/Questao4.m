%Laboratorio de Analise de Sistemas Lineares - Eng. Eletrica
%Pratica 04 - Funcao de Transferencia e Eq. de Diferencas
%24/11/2021
%Gabriel Arantes e Larissa Braga

%Questao 4
%%
clc
clear all
close all
 
SYS11 = tf([25],[1 2 25]);
hold on
step(SYS11)

%Item a
p3 = 0.5;
SYS12 = tf([p3],[1 p3]);
SYS13 = SYS11 * SYS12;
step(SYS13)

%Item b
p3 = 1;
SYS12 = tf([p3],[1 p3]);
SYS13 = SYS11 * SYS12;
step(SYS13)

%Item c
p3 = 2;
SYS12 = tf([p3],[1 p3]);
SYS13 = SYS11 * SYS12;
step(SYS13)

%Item d
p3 = 10;
SYS12 = tf([p3],[1 p3]);
SYS13 = SYS11 * SYS12;
step(SYS13)
 
hold off
title('Resposta ao degrau unitário')
legend('G(s)','G(s) com p3=0.5','G(s) com p3=1','G(s) com p3=2','G(s) com p3=10')
