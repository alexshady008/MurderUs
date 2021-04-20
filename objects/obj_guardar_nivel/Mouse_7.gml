/// @description Crea el nivel
if ( global.jugabilidad=true and global.visible_opciones == true){
	image_alpha = 1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }
	
	var tareas_creadas = true
	#region Crontr que se hayan creados todas las tareas 
		for(i=0 ; i<global.max_tareas_crearse ; i++){
			if (global.tareas_creadas[i] == false) tareas_creadas = false
		}
	#endregion
	
	// SI SE CREARON TODAS LAS TAREAS CREA EL NIVEL
	if (tareas_creadas)
	{	

		#region Guarda el nivel
	
		#region Almacena los objetos en una lista
		global.nivel_creado = ds_list_create()
		ds_list_add(global.nivel_creado,global.mapa_elegido)
		for (i=0;i<instance_number(all);i+=1)
		{
			var inst = instance_find(all,i)
			//if (inst.tipoObjeto != -1){ 
			if (inst.tipoObjeto > 0){ 
				ds_list_add(global.nivel_creado,inst.categoria)
				ds_list_add(global.nivel_creado,inst.tipoObjeto)
				ds_list_add(global.nivel_creado,inst.x)
				ds_list_add(global.nivel_creado,inst.y) 
			}  
		}
		#endregion
	
		#region Crea la cadena de datos de los objetos guardados
			global.datos_nivel_pers = noone
			global.datos_nivel_pers = scr_crear_datos_mapa(global.nivel_creado)
			//show_debug_message(global.datos_nivel_pers)
		#endregion 
		
		#region  Guarda el nivel en el archivo de texto 
			var archivo = file_text_open_write(working_directory + global.nivel_editor[global.nivel_elegido] )
			file_text_write_string(archivo,global.datos_nivel_pers)
			file_text_close(archivo)
		#endregion
		
		#region Guarda los datos del nivel en el archivo.ini
			ini_open("comandos.ini")
			ini_write_real("editor","nivel_editor"+string(global.nivel_elegido),true)
			ini_close() 
		#endregion

		// Destruye la lista de objetos guardados
		ds_list_destroy(global.nivel_creado)
		
		#region Muestra el mensaje de que se guardo el mensaje
			/*switch (os_get_language())
			{
				case "es": scr_crear_popup_mensaje("msgMediano","Nivel Creado!")  break;
				case "pt": scr_crear_popup_mensaje("msgChico","Nível -Saved!")  break;
				case "it": scr_crear_popup_mensaje("msgChico","Livello salvato! ")  break;
				case "ru": scr_crear_popup_mensaje("msgChico","Уровень сохранен! ")  break;
				default: scr_crear_popup_mensaje("msgMediano","Level Created! ") break;
			}*/
			if (instance_exists(obj_contr_editor)){
				obj_contr_editor.aviso_nivel_guardado = true
				obj_contr_editor.alarm[1] = 50
			}
		
		#endregion
		
		#region COntr el tutorial cuando se guarda el nivel
			if (global.tutorial_editor==1){
				global.tutorial_editor=2
				ini_open("comandos.ini")
				ini_write_real("editor","tutorial_editor",global.tutorial_editor)
				ini_close()
			}
		#endregion

	#endregion
	
	}
	
	// SI NO SE CREARON TODAS LAS TAREAS, NO SE CREA EL NIVEL
	else {
		if (instance_exists(obj_contr_editor)){
			obj_contr_editor.aviso_crear_tareas = true
			obj_contr_editor.alarm[0] = 50
		}
	}
}
