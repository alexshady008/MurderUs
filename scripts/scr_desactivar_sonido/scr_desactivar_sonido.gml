function scr_desactivar_sonido(argument0) {
	var sonido = argument0

	if (instance_exists(obj_personaje) and global.musica==true){
		var dist = point_distance(x,y,obj_personaje.x,obj_personaje.y)
		if (dist >= global.area_sonido) audio_stop_sound(sonido)  
	}


}
