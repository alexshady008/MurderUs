/// @description Va a la pantalla previa a jugar
if ( global.menuBloq == false ){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }
	
	
	if (os_type==os_windows){
		global.nombre_async = get_string_async("¿Cómo te llamas?", "NuevoNombre")
	}
	else {
		if (os_device==device_emulator){
			global.nombre_async = get_string_async("¿Cómo te llamas?", "NuevoNombre")
		}
		else {
			switch(os_get_language()) {
				case "es": scr_crear_popup_obtener_texto(obj_contr_menu,"Nombre:")    break;
				case "pt": scr_crear_popup_obtener_texto(obj_contr_menu,"Nome:")    break;
				case "it": scr_crear_popup_obtener_texto(obj_contr_menu,"Nome:")    break;
				case "ru": scr_crear_popup_obtener_texto(obj_contr_menu,"название:")    break;
				default: scr_crear_popup_obtener_texto(obj_contr_menu,"Name:")     break;
			}
		}
	}
}
