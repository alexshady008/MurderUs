/// @description Va a la pantalla previa a jugar
if !(global.popup){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	global.elegir_tipo_vestimenta = 4
	global.seccion_vestimenta = 0
}
