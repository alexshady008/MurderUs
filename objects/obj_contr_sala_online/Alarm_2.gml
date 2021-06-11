/// @description COMPRUEBA CONEXION
// Puede escribir su código en este editor

// SIGUE COMPROBANDO LA CONEXION
if (datosNuevos>datosAnteriores){
	alarm[2] = comprobarConexionDelServidor  //Cada 3 segundos comprueba si recibio un mensaje del servidor, de lo contrario, se desconecto
	datosAnteriores = datosNuevos
}
//SE DESCONECTO Y SE VUELVE AL MENU
else {
	//scr_publicidad()
	global.tipoDesconexion = "descInternet"
	if (ds_exists(global.jugadores_id,ds_type_list)) ds_list_destroy(global.jugadores_id) 
	if (ds_exists(global.jugadores_lista,ds_type_list)) ds_list_destroy(global.jugadores_lista) 
	if (ds_exists(global.servidorDatos,ds_type_list)) ds_list_destroy(global.servidorDatos) 
	global.conectado=false
	room_goto(rm_menu)
}