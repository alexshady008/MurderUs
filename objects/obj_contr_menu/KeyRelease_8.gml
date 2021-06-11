/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
/*
if !(instance_exists(obj_contr_popup_obtener_texto)){
	if (room == rm_menu) game_end()
	else if (room == rm_menu2) room_goto(rm_menu)
}
*/

if ( global.menuBloq == false ){
	if !(global.modo_jugabilidad) {
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
			if (instance_exists(obj_btn_modo_offline)) instance_create_layer(posX_izq,posY,"Interfaz",obj_btn_modo_offline)
			if (instance_exists(obj_btn_modo_online)) instance_create_layer(posX_der,posY,"Interfaz",obj_btn_modo_online)
		#endregion
	
		//Se destruye
		instance_destroy()
	}
	else {
		game_end()
	}
}