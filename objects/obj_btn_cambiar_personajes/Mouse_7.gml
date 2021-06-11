/// @description Va a la pantalla previa a jugar
if ( global.menuBloq == true and global.popup == false){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	// Si se puede guardar
	if (global.skinsElegido <= global.skinsDesbloqueados) {
		if (instance_exists(obj_contr_personajes)) {
			obj_contr_personajes.guardado=true
			instance_destroy(obj_contr_personajes)
		}
	}
	
	// Si NO se puede guardar
	else {
		switch(os_get_language()) {
			case "es": scr_crear_popup_mensaje("msgChico","Personaje Bloqueado!")  break;
			case "pt": scr_crear_popup_mensaje("msgChico","Personagem bloqueado!!")  break;
			case "it": scr_crear_popup_mensaje("msgChico","Carattere bloccato!")  break;
			case "ru": scr_crear_popup_mensaje("msgChico","символ заблокирован!!")  break;
			default: scr_crear_popup_mensaje("msgChico","Blocked Character!")  break;
		}
	}
}
