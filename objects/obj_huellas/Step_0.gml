/// @description Contr su sprite 
// Puede escribir su código en este editor

if (direccion!=noone)
{
	// Derecha 
	if (direccion>=0 and direccion<90) or (direccion>=270 and direccion<=360) {
		image_xscale = -1
	}	
	// Izquierda
	if (direccion>=90 and direccion<270) {
		image_xscale = 1
	}
}



//Verifica cuando debe destruirse
if (global.estadoJuego == "jugando")
{
	if (idCreador!=noone and instance_exists(idCreador)){
		if (idCreador.mostrar_pistas==false) instance_destroy()
	}
	else if !(instance_exists(idCreador)){
		instance_destroy()
	}
}
else {
	instance_destroy()
}