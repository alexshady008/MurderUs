/// @description Va a la pantalla previa a jugar
if ( global.chat==1 and global.escribiendo==false and 
	global.muerto==false and global.slider_presionado==false)
	{
		escala=1
	
		/// sonido
		if global.musica == true
		{ audio_play_sound(snd_boton,100,false) }

		switch(os_get_language()) {
			case "es": scr_crear_popup_obtener_texto(obj_contr_chat,"Texto:")    break;
			case "pt": scr_crear_popup_obtener_texto(obj_contr_chat,"Texto:")    break;
			case "it": scr_crear_popup_obtener_texto(obj_contr_chat,"Testo:")    break;
			case "ru": scr_crear_popup_obtener_texto(obj_contr_chat,"Текст:")    break;
			default: scr_crear_popup_obtener_texto(obj_contr_chat,"Text:")     break;
		}
	
		global.escribiendo = true
	}
