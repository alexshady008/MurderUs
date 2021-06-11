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


//Verifica si debe autodesruirse
if !(constancia){
	if (alfa>0) alfa -= (0.005*global.step_delta)
	else instance_destroy()
}



//Verifica cuando debe destruirse
if (global.estadoJuego == "jugando"){
	if !(instance_exists(idCreador)) instance_destroy()
}
else {
	instance_destroy()
}