%Laboratorio de Analise de Sistemas Lineares - Eng. Eletrica
%Pratica 09 - Ferramentas de análise e projeto de sistemas de controle: lugar das raízes, diagramas de Bode e Nyquist e Nichols
%19/01/2022
%Gabriel Arantes e Larissa Braga

%%
%Parte I - Item a
clear all
clc
close all

num = [1];
den = [1, 1];
Ga = tf(num, den);
Gamf = feedback(Ga, 1);

figure(1)
subplot(3,2,1); step(Ga), grid;
subplot(3,2,2); step(Gamf), grid;
subplot(3,2,3); rlocus(Ga);
subplot(3,2,4); bode(Ga), grid;
subplot(3,2,5); nyquist(Ga);
subplot(3,2,6); nichols(Ga);

%%
%Parte I - Item b
clear all
clc
close all

num = [1];
den = [1, 3, 1];
Ga = tf(num, den);
Gamf = feedback(Ga, 1);

figure(1)
subplot(3,2,1); step(Ga), grid;
subplot(3,2,2); step(Gamf), grid;
subplot(3,2,3); rlocus(Ga);
subplot(3,2,4); bode(Ga), grid;
subplot(3,2,5); nyquist(Ga);
subplot(3,2,6); nichols(Ga);

%%
%Parte I - Item c
clear all
clc
close all

num = [1];
den = [1, 2, 1, 0];
Ga = tf(num, den);
Gamf = feedback(Ga, 1);

figure(1)
subplot(3,2,1); step(Ga), grid;
subplot(3,2,2); step(Gamf), grid;
subplot(3,2,3); rlocus(Ga);
subplot(3,2,4); bode(Ga), grid;
subplot(3,2,5); nyquist(Ga);
subplot(3,2,6); nichols(Ga);

%%
%Parte II - Item a
clear all
clc
close all

num = [1];
den = conv(conv([1,1], [1,1]), [1,1]);
Ga = tf(num, den);
Gamf = feedback(Ga, 1);

figure(1)
subplot(3,2,1); step(Ga), grid;
subplot(3,2,2); step(Gamf), grid;
subplot(3,2,3); rlocus(Ga);
subplot(3,2,4); bode(Ga), grid;
subplot(3,2,5); nyquist(Ga);
subplot(3,2,6); nichols(Ga);

%%
%Parte II - Item b
clear all
clc
close all

%Configuracao do diagrama de Bode
opts = bodeoptions('cstprefs');
opts.PhaseMatching = 'on';

num = [-2, 1];
den = conv(conv([1,1], [1,1]), [1,1]);
Ga = tf(num, den);
Gamf = feedback(Ga, 1);

figure(1)
subplot(3,2,1); step(Ga), grid;
subplot(3,2,2); step(Gamf), grid;
subplot(3,2,3); rlocus(Ga);
subplot(3,2,4); bode(Ga, opts), grid;
subplot(3,2,5); nyquist(Ga);
subplot(3,2,6); nichols(Ga);

%%
%Parte II - Item c
clear all
clc
close all

%Configuracao do diagrama de Bode
opts = bodeoptions('cstprefs');
opts.PhaseMatching = 'on';

tau = 3;

s = tf('s');
sys = exp(-1*s);    
sysx = pade(sys,3); %Aproximacao de Pade de 3a ordem para e^-s

%Funcao de transferencia
num = [1];
den = conv([tau, 1], [tau, 1]);
sysy = tf(num, den);

Ga = sysx*sysy; %Produto da aproximacao de Pade e FT
Gamf = feedback(Ga, 1);

figure(1)
subplot(3,2,1); step(Ga), grid;
subplot(3,2,2); step(Gamf), grid;
subplot(3,2,3); rlocus(Ga);
subplot(3,2,4); bode(Ga, opts), grid;
subplot(3,2,5); nyquist(Ga);
subplot(3,2,6); nichols(Ga);
