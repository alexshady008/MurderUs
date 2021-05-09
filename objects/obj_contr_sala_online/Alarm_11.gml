/// @description Sale del Lobby
// Puede escribir su código en este editor

	
if (ds_exists(global.jugadores_id,ds_type_list)) ds_list_destroy(global.jugadores_id) 
if (ds_exists(global.jugadores_lista,ds_type_list)) ds_list_destroy(global.jugadores_lista) 
	
if (global.conectado){
	scr_desconectar_del_servidor()
	global.conectado=false
}
	
scr_publicidad()

if (global.administrador) room_goto(rm_menu)
else room_goto(rm_unirse_sala)
