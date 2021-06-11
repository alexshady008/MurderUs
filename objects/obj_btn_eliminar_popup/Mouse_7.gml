/// @description Va a la pantalla previa a jugar
if ( global.menuBloq == true and global.popup == false ){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	if (instance_exists(obj_contr_personajes)) instance_destroy(obj_contr_personajes)
	if (instance_exists(obj_contr_oferta)) instance_destroy(obj_contr_oferta)
	if (instance_exists(obj_contr_config)) instance_destroy(obj_contr_config)
	if (instance_exists(obj_contr_discord)) instance_destroy(obj_contr_discord)
	if (instance_exists(obj_banner_promocion_otro_juego)) instance_destroy(obj_banner_promocion_otro_juego)
	if (instance_exists(obj_contr_cambiar_vestimenta)) {
		obj_contr_cambiar_vestimenta.guardado=true
		instance_destroy(obj_contr_cambiar_vestimenta)
	}
}
