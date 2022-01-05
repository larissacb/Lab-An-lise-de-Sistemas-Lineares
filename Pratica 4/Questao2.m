%Laboratorio de Analise de Sistemas Lineares - Eng. Eletrica
%Pratica 04 - Funcao de Transferencia e Eq. de Diferencas
%24/11/2021
%Gabriel Arantes e Larissa Braga

%Questao 2
%%
%Item a
clc
clear all
close all

p1 = i;
p2 = -i;
SYS6 = tf([1],conv([1,p1],[1,p2]))
figure(1)
subplot(1,2,1)
pzmap(SYS6)
title('Polos e zeros para p1=j1 e p2=-j1');
sgrid
subplot(1,2,2)
step(SYS6), grid;
title('Resposta ao degrau unitário para  p1=j1 e p2=-j1')
axis([0 100 0 2])
stepinfo(SYS6)

%%
%Item b
clc
clear all
close all

p1 = -1+i;
p2 = -1-i;
SYS7 = tf([1],conv([1,-p1],[1,-p2]));
figure(2)
subplot(1,2,1)
pzmap(SYS7)
title('Polos e zeros para p1=-1+j1 e p2=-1-j1')
sgrid
subplot(1,2,2)
step(SYS7), grid;
title('Resposta ao degrau unitário para  p1=-1+j1 e p2=-1-j1')
stepinfo(SYS7)

%%
%Item c
clc
clear all
close all


p1 = -1;
p2 = -1;
SYS8 = tf([1],conv([1,-p1],[1,-p2]));
figure(3)
subplot(1,2,1)
pzmap(SYS8)
title('Polos e zeros para p1=-1 e p2=-1')
sgrid
subplot(1,2,2)
step(SYS8), grid;
title('Resposta ao degrau unitário para  p1=-1 e p2=-1')
stepinfo(SYS8)

%%
%Item d
clc
clear all
close all

p1 = -2;
p2 = -4;
SYS9 = tf([1],conv([1,-p1],[1,-p2]));
figure(4)
subplot(1,2,1)
pzmap(SYS9)
title('Polos e zeros para p1=-2 e p2=-4')
sgrid
subplot(1,2,2)
step(SYS9), grid;
title('Resposta ao degrau unitário para  p1=-2 e p2=-4')
stepinfo(SYS9)
