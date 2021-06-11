/// @description Se Desconecta del servidor
// Puede escribir su código en este editor

if !(instance_exists(obj_contr_popup_obtener_texto)){
	
	if (global.conectado) {
		scr_desconectar_del_servidor()
		if (ds_exists(global.jugadores_id,ds_type_list)) ds_list_destroy(global.jugadores_id) 
		if (ds_exists(global.jugadores_lista,ds_type_list)) ds_list_destroy(global.jugadores_lista) 
		global.conectado=false
	}
	room_goto(rm_menu)

}