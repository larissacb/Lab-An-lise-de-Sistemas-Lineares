%Laboratorio de Analise de Sistemas Lineares - Eng. Eletrica
%Pratica 04 - Funcao de Transferencia e Eq. de Diferencas
%24/11/2021
%Gabriel Arantes e Larissa Braga

%Questao 3
%%
clc
clear all
close all

cont = 0;
DEN = [1 1];
while(cont<8)
    SYS10 = tf([1],DEN);
    hold on
    step(SYS10);
    DEN = conv(DEN,[1 1]);
    cont = cont + 1;
end
hold off
title('Solução da Equação Diferença')
legend('n = 1','n = 2','n = 3','n = 4','n = 5','n = 6','n = 7','n = 8');
axis([0 30 0 1.2])
