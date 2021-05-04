/// @description Va a la pantalla previa a jugar
if ( global.jugabilidad == true ){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	switch(os_get_language()) {
		case "es": scr_crear_popup_obtener_texto(obj_contr_unirse_sala,"Código:")    break;
		case "pt": scr_crear_popup_obtener_texto(obj_contr_unirse_sala,"Código:")    break;
		case "it": scr_crear_popup_obtener_texto(obj_contr_unirse_sala,"Codice:")    break;
		case "ru": scr_crear_popup_obtener_texto(obj_contr_unirse_sala,"Код:")    break;
		default: scr_crear_popup_obtener_texto(obj_contr_unirse_sala,"Code:")     break;
	}
}
