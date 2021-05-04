/// @description Sprite
// Puede escribir su código en este editor
if (tipo!=noone){
	visible=true
	
	randomize()
	switch(tipo){
		case 1: sprite_index=spr_frutas_recoleccion image_index=irandom_range(0,9) image_speed=0 break;
		case 2: sprite_index=spr_hongos_recoleccion image_index=irandom_range(0,3) image_speed=0 break;
		case 3: sprite_index=spr_piedras_recoleccion image_index=irandom_range(0,3) image_speed=0 break;
	}
}