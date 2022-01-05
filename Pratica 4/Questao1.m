%Laboratorio de Analise de Sistemas Lineares - Eng. Eletrica
%Pratica 04 - Funcao de Transferencia e Eq. de Diferencas
%24/11/2021
%Gabriel Arantes e Larissa Braga

%%
%Item a
clear all
clc
close all

Ga = tf(1,[3 1]);
t = 0:0.1:10;
u = t;
ur = t.^2;
figure(1);
subplot(2,2,1);
lsim(Ga,u,t), grid;
title('Resposta a rampa');
subplot(2,2,2);
step(Ga), grid;
title('Resposta ao degrau');
subplot(2,2,3);
impulse(Ga), grid;
title('Resposta ao impulso');
subplot(2,2,4);
lsim(Ga,ur,t), grid;
title('Resposta a parábola');

%%
%Item b
clear all
clc
close all

Gb = tf(1,[3 1],'iodelay',5);

t = 0:0.1:10;
u = t;
ur = t.^2;

figure(2);
subplot(2,2,1);
lsim(Gb,u,t), grid;
title('Resposta a rampa');
subplot(2,2,2);
step(Gb), grid;
title('Resposta ao degrau');
subplot(2,2,3);
impulse(Gb), grid;
title('Resposta ao impulso');
subplot(2,2,4);
lsim(Gb,ur,t), grid;
title('Resposta a parábola');

%%
%Item c
clear all
clc
close all

s = tf('s');
%Zeta = 0,35
zeta = 0.35;
Gc = 1/((s^2)+(2*zeta*s)+1);

t = 0:0.1:10;
u = t;
ur = t.^2;

figure(3);
subplot(2,2,1);
lsim(Gc,u,t), grid;
title('Resposta a rampa \zeta=0.35');
subplot(2,2,2);
step(Gc), grid;
title('Resposta ao degrau \zeta=0.35');
subplot(2,2,3);
impulse(Gc), grid;
title('Resposta ao impulso \zeta=0.35');
subplot(2,2,4);
lsim(Gc,ur,t), grid;
title('Resposta a parábola \zeta=0.35');

%Zeta = 0,7
zeta = 0.7;
Gc = 1/((s^2)+(2*zeta*s)+1);

figure(4);
subplot(2,2,1);
lsim(Gc,u,t), grid;
title('Resposta a rampa \zeta=0.7');
subplot(2,2,2);
step(Gc), grid;
title('Resposta ao degrau \zeta=0.7');
subplot(2,2,3);
impulse(Gc), grid;
title('Resposta ao impulso \zeta=0.7');
subplot(2,2,4);
lsim(Gc,ur,t), grid;
title('Resposta a parábola \zeta=0.7');

%Zeta = 1,35
zeta = 1.35;
Gc = 1/((s^2)+(2*zeta*s)+1);

figure(5);
subplot(2,2,1);
lsim(Gc,u,t), grid;
title('Resposta a rampa \zeta=1.35');
subplot(2,2,2);
step(Gc), grid;
title('Resposta ao degrau \zeta=1.35');
subplot(2,2,3);
impulse(Gc), grid;
title('Resposta ao impulso \zeta=1.35');
subplot(2,2,4);
lsim(Gc,ur,t), grid;
title('Resposta a parábola \zeta=1.35');
