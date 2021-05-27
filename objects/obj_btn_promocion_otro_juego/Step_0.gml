/// @description Contr el sprite
// Puede escribir su código en este editor
if (global.promocionar_juego!=false)
{
	visible = true
	switch(global.promocionar_juego){
		case "ACEPTADO_STICKFIGHT": image_index=1 break;
		case "ACEPTADO_FALLRUN": image_index=0 break;
		case "ACEPTADO_STICKHEROES": image_index=2 break;
		default: image_index=0 break
	}
	image_speed = 0
}
else {
	visible = false
}