/// @description Se comprueba la seleccionde colores del jugador
// Puede escribir su código en este editor

// Verifica si los colores elegidos son iguales a los colores elegidos por el jugador
var seleccion_correcta = true
for(i=0 ; i<turno_max ; i++){
	if (color_elegido[i] != color_elegido_jugador[i]) seleccion_correcta = false
}


// Si son correctos, verifica si es el utimo turno para completar la tarea o se sigue eligiendo colores
if (seleccion_correcta){
	
	// Si todavia no es el ultimo turno, se sigue eligiendo colores
	if (turno_max<turno_final){
		turno_max++
		turno=0
		turno_jugador = 0
		//alarm[1] = 50  // Elige los colores
		if (global.step_delta>=1) alarm[1] = 50/global.step_delta
		else alarm[1] = 50
	}
	// Si es el ultimo turno, se completa la tarea
	else if (turno_max==turno_final){
		global.tarea_completada = true
		//alarm[0] = 100
		if (global.step_delta>=1) alarm[0] = 100/global.step_delta
		else alarm[0] = 100
		
		// Guarda la cantidad de tareas completadas
		global.tareas_jugador_completadas += 1
		scr_guardar_datos("tareas_jugador_completadas", global.tareas_jugador_completadas)
	}
}

//Si no es correcto, se reinician los valores
else {
	turno_max = 1
	turno = 0
	turno_jugador = 0
	//alarm[1] = 50  // Elige los colores
	if (global.step_delta>=1) alarm[1] = 50/global.step_delta
	else alarm[1] = 50
	
	//Reinicia la variable de elegir turnos
	for(i=0 ; i<turno_final ; i++){
		color_elegido[i] = 0
		color_elegido_jugador[i] = 0
	}
}