/// @description Contr su sprite
// Puede escribir su código en este editor

if (tipo!=noone){
	visible = true
	switch(tipo){
		case 1: sprite_index=spr_rociador_mantenimiento snd_sonido=snd_spray_agua break
		case 2: sprite_index=spr_tacho_mantenimiento snd_sonido=snd_papelera break
		case 3: sprite_index=spr_aerosol_mantenimiento  snd_sonido=snd_spray_aerosol break
	}
}

image_index=0
image_speed=0