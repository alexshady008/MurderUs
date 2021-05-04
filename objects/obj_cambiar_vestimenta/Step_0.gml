/// @description Comprueba si el jugador est'a cerca
// Puede escribir su código en este editor

if instance_exists(obj_personaje){
	var distancia = point_distance(x,y,obj_personaje.x,obj_personaje.y)
	
	if (distancia<rango_marcador) marcado=true
	else marcado=false
}



if (index==1 or index==4 or index==7){
	if (contr_anim) {
		var tiempo = 100/global.step_delta
		if (tiempo>=10) alarm[0] = tiempo
		else alarm[0] = 10
		contr_anim = false
	}
}
else {
	if (contr_anim) {
		var tiempo = 10/global.step_delta
		if (tiempo>=1) alarm[0] = tiempo
		else alarm[0] = 1
		contr_anim = false
	}
}
