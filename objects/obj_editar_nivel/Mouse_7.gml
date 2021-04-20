/// @description Elige a un nivel
// Puede escribir su código en este editor

/// @description se achica el boton y reproduce el nivel
if (global.jugabilidad==true and global.elegir_mapa_editor==false)
{
	escala = 1 
	
	/// sonido
	if global.musica==true
	{ audio_play_sound(snd_boton,100,false) }

	if (nivel!=noone){
		if (file_exists(working_directory + global.nivel_editor[nivel])){
			var archivo = file_text_open_read(working_directory + global.nivel_editor[nivel])
			global.datos_nivel_pers = noone
			global.datos_nivel_pers = file_text_read_string(archivo)
			file_text_close(archivo)
			global.nivel_elegido = nivel
			// Contr el mapa de los datos y avanza al mapa correspondiente
			if (global.datos_nivel_pers!=noone) scr_contr_mapa_datos()
		}
		else if !(file_exists(working_directory + global.nivel_editor[nivel])){
			scr_popup_no_hay_nivel_guardado()
		} 
	}
}