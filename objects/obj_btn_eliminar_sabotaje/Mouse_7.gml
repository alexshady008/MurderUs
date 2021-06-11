/// @description Va a la pantalla previa a jugar
if (global.saboteando==true or global.ver_minimapa==true or global.ver_minimapa_jugadores==true) {
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	//if (instance_exists(obj_contr_sabotajes)) instance_destroy(obj_contr_sabotajes)
	if (instance_exists(obj_contr_mostrar_minimapa)) instance_destroy(obj_contr_mostrar_minimapa)

}
