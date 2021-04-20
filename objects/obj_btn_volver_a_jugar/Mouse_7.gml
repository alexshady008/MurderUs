/// @description Va a la pantalla previa a jugar
	
/// sonido
if global.musica == true
{ audio_play_sound(snd_boton,100,false) }

// Se vuelve a jugar
if (global.modo=="offline"){
	global.fase = 1
	//room_goto(rm_sala_offline)
}
else if (global.modo=="online"){
	global.fase = 1
	//room_goto(rm_sala_online)
}

