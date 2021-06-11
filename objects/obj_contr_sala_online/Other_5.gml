/// @description Finalizan los sonidos
// Puede escribir su código en este editor
audio_stop_all()
//if (ds_exists(global.jugadores_id,ds_type_list)) ds_list_destroy(global.jugadores_id) 
//if (ds_exists(global.jugadores_lista,ds_type_list)) ds_list_destroy(global.jugadores_lista) 
if (ds_exists(global.servidorDatos,ds_type_list)) ds_list_destroy(global.servidorDatos) 