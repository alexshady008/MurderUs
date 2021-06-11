function scr_activar_sonido(argument0, argument1) {
	var sonido = argument0
	var loop = argument1

	if (instance_exists(obj_personaje) and global.musica==true and global.estadoJuego=="jugando"){
		var dist = point_distance(x,y,obj_personaje.x,obj_personaje.y)
		if (dist < global.area_sonido) audio_play_sound(sonido,100,loop)  
	}


}
