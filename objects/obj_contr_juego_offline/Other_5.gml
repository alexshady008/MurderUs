/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
audio_stop_all()
if (ds_exists(global.lista_tareas,ds_type_list)) ds_list_destroy(global.lista_tareas) 
if (ds_exists(global.nombre_habitaciones,ds_type_list)) ds_list_destroy(global.nombre_habitaciones) 
/*
scr_destruye_listas_locales()
scr_destruye_listas_globales()