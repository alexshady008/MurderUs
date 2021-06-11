/// @description Se activa el modo para borrar objetos
if ( global.jugabilidad=true and global.visible_opciones == true){
	image_alpha = 1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }
	
	if (tipo_obj!=noone)
	{
		#region Contr cuando se presiona
			// contr cuando No se elije a una tarea
			if (global.categoria_obj!=categoria_tarea){
				global.sel_objeto = tipo_obj
				global.destruir = false
			}
			// contr cuando se elige una tarea
			else {
				var obj_tarea = tipo_obj-1
				if (obj_tarea<global.max_tareas_crearse){
					if (global.tareas_creadas[obj_tarea] == false){
						global.sel_objeto = tipo_obj
						global.destruir = false
					}
				}
			}
			#endregion
	}

}
