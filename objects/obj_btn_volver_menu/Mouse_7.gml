/// @description  vuelve al menu

image_xscale = 1
image_yscale = 1

if (global.menuBloq==false)
{
	/// sonido del boton
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }	
	
	if (global.modo_jugabilidad!=false) {
		global.modo_jugabilidad = false
	
		#region Destruye botones
			if (instance_exists(obj_btn_unirse_sala)) instance_destroy(obj_btn_unirse_sala)
			if (instance_exists(obj_btn_crear_sala)) instance_destroy(obj_btn_crear_sala)
			if (instance_exists(obj_btn_practicar)) instance_destroy(obj_btn_practicar)
			if (instance_exists(obj_btn_supervivencia)) instance_destroy(obj_btn_supervivencia)
		#endregion
	
		#region Crea los objetos
			var posX_izq = obj_contr_menu.posX_btn_modo_izq
			var posX_der = obj_contr_menu.posX_btn_modo_der
			var posY = obj_contr_menu.posY_btn_modos
			if !(instance_exists(obj_btn_modo_offline)) instance_create_layer(posX_izq,posY,"Interfaz",obj_btn_modo_offline)
			if !(instance_exists(obj_btn_modo_online)) instance_create_layer(posX_der,posY,"Interfaz",obj_btn_modo_online)
		#endregion
	
		//Se destruye
		instance_destroy()
	}
}