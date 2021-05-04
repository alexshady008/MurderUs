/// @description Cierra la puerta
// Puede escribir su código en este editor

if (abierta){
	if (index>0) {
		index--
		alarm[1]=tiempo
	}	
	else {
		abierta=false
		visible=true
		alarm[0]=100
	}	
}