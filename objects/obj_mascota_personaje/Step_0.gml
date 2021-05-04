/// @description Controla propiedades
// Puede escribir su código en este editor

if (id_creador!=noone){
	if instance_exists(id_creador){
		if (id_creador.muerto==false){
			depth = id_creador.depth-1
			//visible = id_creador.visible
			image_xscale = id_creador.image_xscale
			scr_contr_prop_mascota(mascota,id_creador)
		}
	}
	else{
		instance_destroy()
	}
}