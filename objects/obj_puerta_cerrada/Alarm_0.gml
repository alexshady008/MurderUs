/// @description Abre la puerta
// Puede escribir su código en este editor

if !(abierta){
	if (index<2) {
		index++
		alarm[0]=tiempo
	}	
	else {
		abierta=true
		visible=false
		alarm[1]=100
	}	
}