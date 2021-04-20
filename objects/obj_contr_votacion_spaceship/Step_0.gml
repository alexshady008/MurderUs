/// @description Contr la pos Y del jugador
// Puede escribir su código en este editor

if (etapa>=3){
	// COntr la posY
	if (posY_jug>max_posY_jug){
		posY_jug -= 5*global.step_delta
		if (posY_jug<=etapa1_posY_jug and posY_jug>etapa2_posY_jug) etapa = 4
		else if (posY_jug<=etapa2_posY_jug) etapa = 5
	}
	
	//Contr la rotacion
	if (rotacion_jug<360) rotacion_jug += 2*global.step_delta
	else rotacion_jug=0
}


if !(global.estadoJuego == "votacion_finalizada_un_jugador_elegido")
 and !(global.estadoJuego == "votacion_finalizada_ningun_jugador_elegido") instance_destroy()