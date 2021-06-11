/// @description Va a la pantalla previa a jugar
if ( global.chat == 1 and global.escribiendo == false and global.slider_presionado==false)
{
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	if (instance_exists(obj_contr_chat)) instance_destroy(obj_contr_chat)
	//if (instance_exists(obj_contr_oferta)) instance_destroy(obj_contr_oferta)
}
