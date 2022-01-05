%Laboratorio de Analise de Sistemas Lineares - Eng. Eletrica
%Pratica 04 - Funcao de Transferencia e Eq. de Diferencas
%24/11/2021
%Gabriel Arantes e Larissa Braga

%Questao 5
%%
clc
clear all
close all
 
k = linspace(0,60,60);
u = heaviside(k);
B = 0.9;
y = zeros(1,60);
 
cont = 1;
while(cont<60)
    y(cont+1) = B*y(cont)+(1-B)*u(cont+1);
    cont = cont+1;
end
hold on
plot(k,y);
plot(k,u);
hold off
title('Solução da Equação Diferença')
legend('y(k)','u(k)')
xlabel('k')
axis([0 60 0 1.2])
