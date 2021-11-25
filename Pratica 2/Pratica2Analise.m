%Laboratorio de Analise de Sistemas Lineares - Eng. Eletrica
%Pratica 02 - Roteiros e funcoes no Matlab - Conceitos de Estatistica
%10/11/2021
%Gabriel Arantes e Larissa Braga

%O script foi feito para ser rodado por seção
%%
%Questao 1
clc;
close all;
clear all;

y = 1+0.35*randn(600,1);

media = mean(y); %Media
desvioPadrao = std(y); %Desvio Padrao
variancia = var(y); %Variancia

%Impressao dos resultados na janela de comandos
fprintf("Média: %.4f\n", media);
fprintf("Desvio Padrão: %.4f\n", desvioPadrao);
fprintf("Variância: %.4f\n", variancia);

figure(1)
subplot(1,2,1);
[N Y] = hist(y);

barh(Y,N, 'linewidth', 1.0, 'facecolor', 'k'), grid;
title("Histograma");

subplot(1,2,2);
plot(y,'k'),grid;
title("Sinal y");

%%
%Questao 2
clc;
close all;
clear all;

x = linspace(0,12*pi,6*25); %25 pontos por periodo
y = sin(x);

figure(2)
plot(x,y, 'linewidth', 1.5), grid;
title("Sinal Senoidal");
ylabel("Amplitude");
xlabel("\omega [rad/s]");

fprintf("Desvio padrão do sinal senoidal %.4f\n", std(y));
fprintf("Valor eficaz do sinal senoidal %.4f\n", rms(y));
fprintf("O desvio padrão do sinal é igual ao valor eficaz da senóide\n");

%%
%Questao 3
clc;
close all;
clear all;

%Para usar o 'Publish' do Matlab
a1 = 0.2;
a2 = 1.6;

%Para entrada de dados via teclado
%a1 = input("Informe o valor 1 de 'a': ");
%a2 = input("Informe o valor 2 de 'a': ");

x = -30:0.5:30; %Criando um vetor com valores para serem usados na expressao y
y1 = 1./(1+exp(-a1.*x)); %Funcao solicitada no relatorio
y2 = 1./(1+exp(-a2.*x)); %Funcao solicitada no relatorio

figure(3)
subplot(1,2,1);
plot(x,y1, 'linewidth', 1.5), grid;
title('Item a');
ylabel("y");
xlabel("x");

subplot(1,2,2);
plot(x,y2, 'linewidth', 1.5), grid;
title('Item b');
ylabel("y");
xlabel("x");
suptitle("Comportamento de s(x)");
%%
%Questao 4
clc;
close all;
clear all;

x = -20:0.1:20; %Criando um vetor com valores para serem usados na expressao y
%Para o item a
m = [0 0 0];
sigma = [0.4 1.2 1.8]; 

subplot(1,2,1);
for i=1:length(m)
    y = distGaussiana(x,m(i),sigma(i));
    plot(x,y,'linewidth', 1.0),grid;
    hold on
end

title("Item a");
ylabel("y");
xlabel("x");
legend("\mu=0; \sigma=0.4", "\mu=0; \sigma=1.2", "\mu=0; \sigma=1.8");

%Para o item b
m = [0.4 1.2 1.8];
sigma = [1 1 1]; 

subplot(1,2,2);
for i=1:length(m)
    y = distGaussiana(x,m(i),sigma(i));
    plot(x,y,'linewidth', 1.2),grid;
    hold on
end
title("Item b");
ylabel("y");
xlabel("x");
legend("\mu=0.4; \sigma=1", "\mu=1.2; \sigma=1", "\mu=1.8; \sigma=1");
suptitle("Distribuição Gaussiana");
