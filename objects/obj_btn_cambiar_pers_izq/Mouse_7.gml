/// @description Va a la pantalla previa a jugar
if ( global.menuBloq == true ){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	global.skinsElegido -= 1
	if (global.skinsElegido<1) global.skinsElegido = global.maxSkins
	
	if (instance_exists(obj_personaje_muestra)){
		obj_personaje_muestra.skins = global.skinsElegido
		obj_personaje_muestra.alarm[0] = 1
		// SI el skin esta bloqueado
		if (global.skinsElegido > global.skinsDesbloqueados) obj_personaje_muestra.disponible=false
		// SI el skin esta desbloqueado
		else obj_personaje_muestra.disponible=true
	}
}
