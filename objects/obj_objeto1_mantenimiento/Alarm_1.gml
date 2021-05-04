/// @description Contr su sprite final
// Puede escribir su código en este editor

if (tipo!=noone){
	switch(tipo){
		case 1: sprite_index=spr_arbusto_mantenimiento image_index=0 break
		case 2: visible=false break
		case 3:  var index=image_index 
			sprite_index=spr_maquinaria_normales_mantenimiento 
			if (index==0) image_index=1
			else if (index==1) image_index=0
		break
	}
}

image_speed=0