/// @description Va a la pantalla previa a jugar
if ( global.jugabilidad == true ){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	switch(os_get_language()) {
		case "es": scr_crear_popup_obtener_texto(obj_contr_crear_sala,"Nombre:")    break;
		case "pt": scr_crear_popup_obtener_texto(obj_contr_crear_sala,"Nome:")    break;
		case "it": scr_crear_popup_obtener_texto(obj_contr_crear_sala,"Nome:")    break;
		case "ru": scr_crear_popup_obtener_texto(obj_contr_crear_sala,"название:")    break;
		default: scr_crear_popup_obtener_texto(obj_contr_crear_sala,"Name:")     break;
	}
}
