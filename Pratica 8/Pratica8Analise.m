%Laboratorio de Analise de Sistemas Lineares - Eng. Eletrica
%Pratica 08 - Sistemas realimentados
%12/01/2022
%Gabriel Arantes e Larissa Braga

%%
%Questao 2 - Item (c)
clear all
close all
clc

num = 1;
den = conv(conv([1 1],[1 2]),[1 3]);
g = tf([num],den)
figure(1)
rlocus(g);
title('Lugar das Raízes do Sistema');
xlabel('Eixo real');
ylabel('Eixo imaginário');

%%
%Questao 2 - Item (d)
clear all
close all
clc

num = 10;
den = conv(conv([1 1],[1 2]),[1 3]);
g = tf([num],den)
[A,B,C,D] = tf2ss(num,den)
  
%%
%Questao 2 - Item (e)
clc

figure(2)
step(A,B,C,D);
title('Resposta temporal ao degrau a partir da representação em espaço de estados');
xlabel('Tempo');
ylabel('Amplitude');
  
