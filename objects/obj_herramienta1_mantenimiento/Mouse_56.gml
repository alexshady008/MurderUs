/// @description Se suelta la pieza
// Puede escribir su código en este editor
if (presionado){
	presionado = false
	escala = 1
	interactuando=false
	mantener_objeto=noone
	depth = depth_inicial 
	x = posX_inicial
	y = posY_inicial
	
	if (global.musica==true and sonido!=noone) {
		audio_stop_sound(sonido) 
		sonido=noone
	}
}