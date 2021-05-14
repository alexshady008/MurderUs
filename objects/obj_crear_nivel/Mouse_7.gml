/// @description Crea el nivel
if ( global.jugabilidad=true and global.visible_opciones == true){
	image_alpha = 1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	
	// SI HAY UN NIVEL CREADO Y GUARDADO
	if (global.datos_nivel_pers!=noone)
	{
		var guardar = scr_contr_objetos_necesarios_creados()
		
		if (guardar)
		{
			#region COntr el tutorial cuando se guarda el nivel
				if (global.tutorial_editor==2){
					global.tutorial_editor=3
					ini_open("comandos.ini")
					ini_write_real("editor","tutorial_editor",global.tutorial_editor)
					ini_close()
				}
			#endregion
		
			global.editor = true
			global.tipo_mapa_sala = "personalizado"
			
			// Vuelve a la room en donde estaba
			scr_vuelve_room_inicial_editor()
			
		}else {
			if (instance_exists(obj_contr_editor)){
				obj_contr_editor.aviso_crear_tareas = true
				obj_contr_editor.alarm[0] = 50
			}
		}
	
	}
	
	// SI NO SE CREARON TODAS LAS TAREAS, NO SE CREA EL NIVEL
	else {
		if (instance_exists(obj_contr_editor)){
			obj_contr_editor.aviso_nivel_no_guardado = true
			obj_contr_editor.alarm[2] = 50
		}
	}
}
