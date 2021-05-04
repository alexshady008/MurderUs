/// @description Se elige los colores
// Puede escribir su código en este editor

// Reinicia la seleccion de colores en los botones
btn_elegir_color1.seleccionado = false 
btn_elegir_color2.seleccionado = false 
btn_elegir_color3.seleccionado = false 
btn_elegir_color4.seleccionado = false 
	

if (turno<turno_max)
{
	jugar = false
	
	// SI el color no fue asignado, lo asigna
	if (color_elegido[turno] ==  0 ) {
		randomize()
		color_elegido[turno] = irandom_range(1,4)
	}	
	

	// Selecciona un color en los botones
	switch(color_elegido[turno] ){
		case 1: btn_elegir_color1.seleccionado = true break
		case 2: btn_elegir_color2.seleccionado = true break
		case 3: btn_elegir_color3.seleccionado = true break
		case 4: btn_elegir_color4.seleccionado = true break
	}
	
	// Aumenta el turno y verificca si debe mostrarse otro color o permitir al jugador seleccionar colores
	turno++
	//alarm[1] = 30 //Se repite el proceso
	//alarm[3] = 15 //Se repite el proceso
	
	if (global.step_delta>=1) {
		alarm[1] = 30/global.step_delta
		alarm[3] = 15/global.step_delta
	}
	else {
		alarm[1] = 30 
		alarm[3] = 15 
	}

}

else if (turno==turno_max){
	//alarm[2] = 100 //Se Permite seleccionar un color
	jugar = true
}