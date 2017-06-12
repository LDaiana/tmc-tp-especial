
function [probabilidad_estimada, probabilidades_parciales] = calcular_prob_fallos_sucesivos(epsilon, dni);
  
  %Declaro variables
  probabilidad_anterior = 0; 
  probabilidad_actual = 1;  
  fallos_sucesivos = 0;
  total_de_disparos = 0;
  probabilidades_parciales = [];
  
  % No converge mientras
  while ~converge(probabilidad_anterior, probabilidad_actual, epsilon, total_de_disparos)
    
    % La probabilidad anterior es igual a la probabilidad actual
    probabilidad_anterior = probabilidad_actual;
    
    %Veo si autoriza el disparo laser
    disparo = puedo_tirar(dni);
    disparo2 = puedo_tirar(dni);
    
    % Actualizo la cantidad de tiradas
    total_de_disparos = total_de_disparos + 1;
    
    if strcmp(disparo , 'desautorizado') && strcmp(disparo2, 'desautorizado')
      fallos_sucesivos = fallos_sucesivos + 1;
    end
    
      probabilidad_actual = fallos_sucesivos / total_de_disparos;

    
    % Grafico 
    probabilidades_parciales = cat(1, probabilidades_parciales, probabilidad_actual);
  
  end
  
  % Imprimo por pantalla las probabilidades
  fprintf('%d\n', probabilidad_actual);
  fflush(stdout);
  
  
  % Devuelvo la probabilidad actual
  probabilidad_estimada = probabilidad_actual;
  
end