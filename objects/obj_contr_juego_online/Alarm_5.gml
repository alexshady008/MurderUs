/// @description Comprueba si recibio un mensaje del servidor, de lo contrario, se desconecto
// Puede escribir su código en este editor

if !(juego_finalizado){
	
// SIGUE COMPROBANDO LA CONEXION
if (datosNuevos>datosAnteriores){
	alarm[5] = comprobarConexionDelServidor  //Cada 3 segundos comprueba si recibio un mensaje del servidor, de lo contrario, se desconecto
	datosAnteriores = datosNuevos
}
//SE DESCONECTO Y SE VUELVE AL MENU
else {
	scr_publicidad()
	global.tipoDesconexion = "descInternet"
	scr_destruye_listas_locales()
	scr_destruye_listas_globales()
	global.conectado=false
	room_goto(rm_menu)
}

}