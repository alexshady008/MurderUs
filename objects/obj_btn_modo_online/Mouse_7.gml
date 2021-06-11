/// @description Va a la pantalla previa a jugar
if ( global.menuBloq == false ){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }
	
	if !(global.modo_jugabilidad) {
		global.modo_jugabilidad = 1
		
		#region Crea los objetos
			var posX_izq = obj_contr_menu.posX_btn_modo_izq
			var posX_der = obj_contr_menu.posX_btn_modo_der
			var posY = obj_contr_menu.posY_btn_modos
			if (instance_exists(obj_btn_modo_offline)) instance_destroy(obj_btn_modo_offline)
			if !(instance_exists(obj_btn_unirse_sala)) instance_create_layer(posX_izq,posY,"Interfaz",obj_btn_unirse_sala)
			if !(instance_exists(obj_btn_crear_sala)) instance_create_layer(posX_der,posY,"Interfaz",obj_btn_crear_sala)
			if !(instance_exists(obj_btn_volver_menu)) instance_create_layer(1040,96,"Interfaz",obj_btn_volver_menu)
			instance_destroy()
		#endregion
	}	
}
