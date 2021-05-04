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
			file_delete(working_directory + global.nivel_editor[nivel])
			#region Guarda los datos del nivel en el archivo.ini
				ini_open("comandos.ini")
				ini_write_real("editor","nivel_editor"+string(nivel),false)
				ini_close() 
			#endregion
			switch (os_get_language())
			{
				case "es": scr_crear_popup_mensaje("msgChico","Nivel eliminado!")  break;
				case "pt": scr_crear_popup_mensaje("msgChico","Nível removido!")  break;
				case "it": scr_crear_popup_mensaje("msgChico","Livello rimosso!")  break;
				case "ru": scr_crear_popup_mensaje("msgChico","Уровень удален!")  break;
				default: scr_crear_popup_mensaje("msgChico","Level removed!") break;
			}
		}
		else if !(file_exists(working_directory + global.nivel_editor[nivel])){
			scr_popup_no_hay_nivel_guardado()
		} 
	}
}