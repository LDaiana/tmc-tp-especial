%script_trabajo_especial
clear
clc

%Mido el tiempo
tic

%Repetir llamados a la funcion con diferentes valores de epsilon
%Incluyo valor de epsilon A
epsilon = 0.1;
dni = 40942349;

%Llamo a la funcion que calcula probabilidad con Montecarlo
[probabilidad_estimada, probabilidades_parciales] = calcular_prob_fallos_sucesivos(epsilon, dni);

% Muestra por pantalla la probabilidad estimada
fprintf('Probabilidad estimada de fallos sucesivos A = %f: \n', probabilidad_estimada);

%Calculo el desvio estandar de probabilidades parciales de A
de1 = std(probabilidades_parciales(1:20));
de2 = std(probabilidades_parciales(end-19:end));

%Los imprimo en pantalla
fprintf('Desvio estandar de las primeras 20 iteraciones  = %f: \n', de1);
fprintf('Desvio estandar de las ultimas 20 iteraciones  = %f: \n', de2);

%Grafico
figure, plot(probabilidades_parciales);
hold on
xlabel('Iteraciones');
ylabel('Probabilidad');
ylim([0 1]);
legend('Probabilidades parciales');
grid on

tiempo = toc;
fprintf('Tiempo = %f: \n', tiempo);
%-------------------------------------------------------------------------------------------------------------------------

%Mido el tiempo
tic

%Incluyo valor de epsilon B
epsilon = 0.01;
dni = 40942349;

%Llamo a la funcion que calcula probabilidad con Montecarlo
[probabilidad_estimada, probabilidades_parciales] = calcular_prob_fallos_sucesivos(epsilon, dni);

% Muestra por pantalla la probabilidad estimada
fprintf('Probabilidad estimada de fallos sucesivos B = %f: \n', probabilidad_estimada);

%Calculo el desvio estandar de probabilidades parciales de B
de1 = std(probabilidades_parciales(1:20));
de2 = std(probabilidades_parciales(end-19:end));

%Los imprimo en pantalla
fprintf('Desvio estandar de las primeras 20 iteraciones  = %f: \n', de1);
fprintf('Desvio estandar de las ultimas 20 iteraciones  = %f: \n', de2);

%Grafico
figure, plot(probabilidades_parciales);
hold on
xlabel('Iteraciones');
ylabel('Probabilidad');
ylim([0 1]);
legend('Probabilidades parciales');
grid on

tiempo = toc;
fprintf('Tiempo = %f: \n', tiempo);
%--------------------------------------------------------------------------------------------------------------------------

%Mido el tiempo
tic

%Incluyo valor de epsilon C
epsilon = 0.001;
dni = 40942349;

%Llamo a la funcion que calcula probabilidad con Montecarlo
[probabilidad_estimada, probabilidades_parciales] = calcular_prob_fallos_sucesivos(epsilon, dni);

% Muestra por pantalla la probabilidad estimada
fprintf('Probabilidad estimada de fallos sucesivos C = %f: \n', probabilidad_estimada);

%Calculo el desvio estandar de probabilidades parciales de C
de1 = std(probabilidades_parciales(1:20));
de2 = std(probabilidades_parciales(end-19:end));

%Los imprimo en pantalla
fprintf('Desvio estandar de las primeras 20 iteraciones  = %f: \n', de1);
fprintf('Desvio estandar de las ultimas 20 iteraciones  = %f: \n', de2);

%Grafico
figure, plot(probabilidades_parciales);
hold on
xlabel('Iteraciones');
ylabel('Probabilidad');
ylim([0 1]);
legend('Probabilidades parciales');
grid on

tiempo = toc;
fprintf('Tiempo = %f: \n', tiempo);
