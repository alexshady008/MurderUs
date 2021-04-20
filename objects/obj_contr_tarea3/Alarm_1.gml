/// @description Comprueba si se ingresaron los valores iguales
// Puede escribir su código en este editor

if (valor_jugador == valor_string){
	global.tarea_completada = true
	if (global.step_delta>=1) alarm[0] = 100/global.step_delta
	else alarm[0] = 100
}

else {
	randomize()
	ingresar = true
	cant_valor = 0
	valor_string = ""
	for(i=0 ; i<max_cant_valor ; i++){
		var valor = irandom_range(1,9) 
		var ultima_pos = string_length(valor_string)+1
		var valor_a_insertar = string(valor)
		valor_string = string_insert(valor_a_insertar,valor_string,ultima_pos)
	}
	valor_jugador = ""
}