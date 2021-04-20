/// @description Manda ela viso de conexion
// Puede escribir su código en este editor

if (global.conectado) {
	alarm[0] = global.tiempoComprobarConexion
	//alarm[0] = global.tiempoComprobarConexion/global.step_delta
	if (!instance_exists(obj_personaje) or obj_personaje.enviando_datos=false) scr_aviso_de_conexion()
	//scr_aviso_de_conexion()
	//if !(mostrarSpawn) mostrarSpawn = true
}