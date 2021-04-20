/// @description Va a la pantalla previa a jugar
if (global.ver_camaras) {
	escala=1.5
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	//if (instance_exists(obj_contr_sabotajes)) instance_destroy(obj_contr_sabotajes)
	if (instance_exists(obj_contr_ver_camaras)) {
		obj_contr_ver_camaras.destruccion_manual = true
		instance_destroy(obj_contr_ver_camaras)
	}	

}
