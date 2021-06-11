/// @description Contr cuando se selecciona el bloque
// Puede escribir su código en este editor

if (seleccionado){
	if !(animacion_seleccion){
		animacion_seleccion=true
		if (tipo!=noone){
			switch(tipo){
				case 1: image_speed=0.3 break;
				case 2: image_speed=0.3 break;
				case 3: 
					instance_create_depth(x,y,depth-1,obj_animacion_bloque_recoleccion)
					alarm[2]=1 
				break;
			}
		}
	}
}


//Se destruye
if !(instance_exists(obj_tareas_recoleccion)) instance_destroy()