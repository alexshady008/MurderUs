/// @description Sale del juego
// Puede escribir su código en este editor

	
scr_destruye_listas_locales()
scr_destruye_listas_globales()
	
if (global.conectado){
	scr_desconectar_del_servidor()
	global.conectado=false
}
	
scr_publicidad()
	
room_goto(rm_menu)