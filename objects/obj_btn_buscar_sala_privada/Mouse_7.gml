/// @description Va a la pantalla previa a jugar
if ( global.jugabilidad == true ){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	// Busca una sala privada
	// SI hay un codigo escrito
	if (global.sala_codigo != ""){
		// Si el codigo tiene 6 caracteres
		if (string_length(global.sala_codigo) == global.cant_max_letras_codigo){
			//scr_conectar_a_sala(global.sala_codigo)
			var sala_id = real(global.sala_codigo)
			scr_buscar_sala(sala_id)
			global.idSala = sala_id
			global.jugabilidad = false 
			obj_contr_unirse_sala.alarm[1] = 200 
		}
		// Si el codigo NO tiene 6 caracteres
		else {
			switch(os_get_language()) {
			case "es": scr_crear_popup_mensaje("msgChico","¡Escribe un código con "+string(global.cant_max_letras_codigo)+" caracteres!")  break;
			case "pt": scr_crear_popup_mensaje("msgChico","Escreva um código com "+string(global.cant_max_letras_codigo)+" caracteres!")  break;
			case "it": scr_crear_popup_mensaje("msgChico","Scrivi un codice con "+string(global.cant_max_letras_codigo)+" caratteri!")  break;
			case "ru": scr_crear_popup_mensaje("msgChico","Напишите код из "+string(global.cant_max_letras_codigo)+" символов!")  break;
			default: scr_crear_popup_mensaje("msgChico","Write a code with "+string(global.cant_max_letras_codigo)+" characters!")  break;
		}
		}
	}
	// Si NO hay un codigo escrito
	else {
		switch(os_get_language()) {
			case "es": scr_crear_popup_mensaje("msgChico","¡Escribe un código!")  break;
			case "pt": scr_crear_popup_mensaje("msgChico","Escreva um código!")  break;
			case "it": scr_crear_popup_mensaje("msgChico","Scrivi un codice!")  break;
			case "ru": scr_crear_popup_mensaje("msgChico","Напишите код!")  break;
			default: scr_crear_popup_mensaje("msgChico","Write a code!")  break;
		}
	}
}
