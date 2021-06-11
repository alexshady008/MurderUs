/// @description Contr su sprite
// Puede escribir su código en este editor
visible=true

if (tipo!=noone){
	switch(tipo){
		case 1: sprite_index=spr_arbusto_recoleccion  image_speed=0 snd_sonido=snd_arbusto break;
		case 2: sprite_index=spr_planta_azul_recoleccion  image_speed=0 snd_sonido=snd_arbusto break;
		case 3: sprite_index=spr_bloque_recoleccion  image_speed=0  snd_sonido=snd_roca break;
	}
}