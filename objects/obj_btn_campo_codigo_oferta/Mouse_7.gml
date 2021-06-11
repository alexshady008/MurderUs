/// @description Va a la pantalla previa a jugar
if (global.popup==false and obj_contr_tienda.interfaz_bloqueada==false){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }
	
	obj_contr_tienda.interfaz_bloqueada = true

	switch(os_get_language()) {
		case "es": scr_crear_popup_obtener_texto(obj_contr_tienda,"Código:")    break;
		case "pt": scr_crear_popup_obtener_texto(obj_contr_tienda,"Código:")    break;
		case "it": scr_crear_popup_obtener_texto(obj_contr_tienda,"Codice:")    break;
		case "ru": scr_crear_popup_obtener_texto(obj_contr_tienda,"Код:")    break;
		default: scr_crear_popup_obtener_texto(obj_contr_tienda,"Code:")     break;
	}
}
