// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_guardar_datos(key, value){
	ini_open("comandos.ini")
		ini_write_real("jugadorDatos", key, value)
	ini_close()
}