/// @description Sale del juego
// Puede escribir su código en este editor

/*	
scr_destruye_listas_locales()
scr_destruye_listas_globales()
*/	
scr_publicidad()
if (ds_exists(global.lista_tareas,ds_type_list)) ds_list_destroy(global.lista_tareas) 
if (ds_exists(global.nombre_habitaciones,ds_type_list)) ds_list_destroy(global.nombre_habitaciones)	
room_goto(rm_menu)