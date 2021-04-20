/// @description Va a la pantalla previa a jugar
if ( global.jugabilidad == true ){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	// Crea la sala
	//global.administrador = true
	scr_crear_sala()
	obj_contr_crear_sala.alarm[0] = 200
	global.jugabilidad = false
	//room_goto(rm_lobby)
}
