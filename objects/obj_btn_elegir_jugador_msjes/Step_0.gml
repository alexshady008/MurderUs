/// @description Escala y destruccion
// Puede escribir su código en este editor

image_xscale = escalaX
image_yscale = escalaY


// Se destruye si el jugador se desconecta
if (jugador_inst!=noone){
	if !(instance_exists(jugador_inst)) instance_destroy()
}