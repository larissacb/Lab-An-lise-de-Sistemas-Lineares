clc;
clear all;
close all;


load Dados1_PlantaTermica_P10.txt -ascii;

t = Dados1_PlantaTermica_P10(:,1); %tempo
temp = Dados1_PlantaTermica_P10(:,2); %temperatura
i = Dados1_PlantaTermica_P10(:,3); %corrente

%%
%grafico de corrente e temperatura
figure(1)
plot(t, i), grid;
title('Variação da corrente no tempo');
xlabel('Tempo (s)');
ylabel('Corrente (A)');

figure(2)
plot(t, temp), grid;
title('Variação da temperatura no tempo');
xlabel('Tempo (s)');
ylabel('Temperatura (ºC)');

%%
%normalização
%k = delta(Temp)/delta(t)
k = (temp(end)- temp(1))/(i(end)-i(1))
%tau
y_tau = 0.63*(temp(end)-temp(1))+temp(1);
%plotando o ponto em que a temperatura vale 63% do valor final
[a, idx] = min(abs(temp-y_tau));
x_tau = t(idx)-2; %tau
hold on
plot(t(idx),temp(idx), '*'); 
hold off

theta = 2-1; %diferenca entre o tempo que a temperatura comeca a variar e a aplicacao do degrau

%funcao de transferencia
num = [k];
den = [x_tau, 1];
g = tf(num, den, 'iodelay', theta);

%%
%resposta do sistema ao vetor de corrente dos dados
gsim = lsim(g, i, t)+ temp(2);
figure(3)
plot(t, gsim, 'r'); %resposta ao modelo simulado
hold on
plot(t, temp, 'k'); %comportamento real
grid on
title('Resposta do sistema');
xlabel('Tempo(s)');
ylabel('Temperatura (ºC)');
legend('Modelo Simulado', 'Modelo Real');
