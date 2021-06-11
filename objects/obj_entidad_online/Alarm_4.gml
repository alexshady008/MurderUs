/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

show_debug_message("Activa alarma 4")
#region COntr el sprite de la alcantarilla
	var obj = instance_nearest(x,y,obj_agujero)
	if (obj!=noone and point_distance(x,y,obj.x,obj.y)<dist_alcantarilla){
		with(obj) scr_abrir_alcantarilla_bot(snd_abrir_alcantarilla)
	} else {
		var obj2 = instance_nearest(x,y,obj_taquilla_escondese)
		if (obj2!=noone and point_distance(x,y,obj2.x,obj2.y)<dist_alcantarilla){
			with(obj2) scr_abrir_alcantarilla_bot(snd_abrir_alcantarilla)
		}
	}
#endregion