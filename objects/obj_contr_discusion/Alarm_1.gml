/// @description Contr el contador para finalizar de votar
// Puede escribir su código en este editor
if (global.contr_votacion){
	if (contador > 0){
		contador-=1
		alarm[1] = room_speed
	}
	else {
		if (global.muerto==false and global.chat==false) {
			escala = 1
			global.votar_impostor = "nothing"
			global.contr_votacion =  false
			scr_votar_impostor(global.votar_impostor,global.idLocal)
		}
	}
}