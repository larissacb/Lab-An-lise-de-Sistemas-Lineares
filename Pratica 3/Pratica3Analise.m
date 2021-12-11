%Laboratorio de Analise de Sistemas Lineares - Eng. Eletrica
%Pratica 03 - Polinomios, convolucao e sinais harmonicos
%24/11/2021
%Gabriel Arantes e Larissa Braga
%%
clc;
clear all;
close all;

syms x; %Variavel simbolica
p = [(x-1)*(x+3)^3, (x^3+4*x), (x-3*i)*(x+3*i)*(x+2), 800*x^3+1600*x^2+x+1, x^3+9*x^2+23*x+1, (x+1)*(x+sqrt(3*i))*(x-sqrt(3*i))]; %Vetor onde estao todos os polinomios do exercicio
figure(1)
for i=1:length(p)
    expandido = expand(p(i)); %Expandir os polinomios
    polinomio = sym2poly(expandido); %Converter de simbolico para padrao de polinomio
    raizes = roots(polinomio); %Calcular as raizes do polinomio
    plot(real(raizes),imag(raizes), '*', 'LineWidth', 3.0), sgrid; %Plotar grafico
    hold on
end
title("Questão 1");
ylabel("Imag");
xlabel("Real");
%%
%Questao 2
clc;
clear all;
close all;

syms x t s z; %Variavel simbolica
p = [1+4*x, 1+4*z^2, 4-4*t^2*sqrt(2)+4*t^5, (s+0.9)^3]; %Vetor de polinomios

figure(2)
for i=1:length(p)
    expandido = expand(p(i)); %Expandir os polinomios
    polinomio = sym2poly(expandido); %Converter de simbolico para padrao de polinomio
    raizes = roots(polinomio); %Calcular as raizes do polinomio
    plot(real(raizes),imag(raizes), '*', 'LineWidth', 3.0), sgrid; %Plotar grafico
    hold on
end
title("Questão 2");
ylabel("Imag");
xlabel("Real");
%%
%Questao 3
clc
clear all
close all
syms z k s %Variaveis simbolicas
p = [(1 + 4*z)*(1+4*z+8*z^2),(1-2*k)*(1+2*k),(s+3)/(s*(s+2)*(s+0.7)^2)]; %Vetor de polinomios

for i=1:length(p)
   pretty(expand(p(i)))
end
%%
%Questao 4
clc
clear all
close all
syms s
c = [1.5, 0.15; 1.5, 0.6; 1, 0.6]; %Matriz de condicoes

figure(3)
hold on
for i=1:size(c,1) %Percorre as linhas da matriz de condicoes
    g = c(i,1)^2/(s^2+2*c(i,1)*c(i,2)*s + (c(i,1)^2)); %Funcao de transferencia
    [n,d] = numden(g); %Separando numerador e denominador
    r = roots(sym2poly(d));
    plot(real(r),imag(r), '*', 'LineWidth', 3.0); %Plotar grafico
    
end
hold off
suptitle("Questão 4");
legend("\omega=1.5; \zeta=0.15", "\omega=1.5; \zeta=0.6", "\omega=1.0; \zeta=0.6", 'Autoupdate', 'off');
sgrid;
title("Polos de G(s)");
ylabel("Imag");
xlabel("Real");
%%
%Questao 5
clc
clear all
close all

t = (0:0.02:2);

for i = 1:length(t)
    if (t(i) <= 1)
        y(i) = 1;
    else 
        y(i)= -1;
    end
end 

y1 = sin(pi.*t);
y3 = sin(3*pi.*t)./3;
y5 = sin(5*pi.*t)./5;
y7 = sin(7*pi.*t)./7;

figure(1);
subplot(3,1,1);
plot(t,y); hold on; 
plot(t,y1+y3); plot(t,y1+y3+y5+y7);
axis([0 2 -1.5 1.5]);
title("Sinal quadrado e seus primeiros harmônicos"); 
xlabel("Tempo(s)");
ylabel("y(t)");

subplot(3,1,2);
plot(t,y1); hold on; plot(t,y3); plot(t,y5); plot(t,y7);
xlabel("Tempo(s)");
ylabel("y(t)");

amplitudes = [max(y1) max(y3) max(y5) max(y7)];
harmonicos = [1 3 5 7]; 
subplot (3,1,3);
stem (harmonicos, amplitudes);
axis([0 8 0 1.5]);
xlabel("Harmônicos");
ylabel("Amplitude");
suptitle("Questão 5");
