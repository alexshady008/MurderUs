/// @description SE FINALIZA EL JUEGO
// Puede escribir su código en este editor
scr_publicidad()
if (ds_exists(global.lista_tareas,ds_type_list)) ds_list_destroy(global.lista_tareas) 
if (ds_exists(global.nombre_habitaciones,ds_type_list)) ds_list_destroy(global.nombre_habitaciones)
if (instance_exists(obj_contr_efectos)) instance_destroy(obj_contr_efectos)
room_goto(rm_menu)
