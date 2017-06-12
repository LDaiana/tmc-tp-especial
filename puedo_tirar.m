%funcion que se encarga de ver si pueded tirar o no (condicion)

function disparo = puedo_tirar(dni)
  
  %Obtengo el numero que devuelve la funcion my_mex_service
  autorizacion = my_mex_service(dni);
  
  %Si es igual a 1 autoriza a disparar
  if autorizacion == 1
    disparo = 'autorizado';
  else if autorizacion == 0 
    disparo = 'desautorizado';
  end
end