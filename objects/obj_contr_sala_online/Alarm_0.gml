/// @description Manda un aviso de que el jugador sigue conectado
// Puede escribir su código en este editor

if (global.conectado) {
	alarm[0] = global.tiempoComprobarConexion
	//scr_aviso_de_conexion()
	if (!instance_exists(obj_personaje) or obj_personaje.enviando_datos=false) scr_aviso_de_conexion()
	if !(mostrarSpawn) mostrarSpawn = true
}