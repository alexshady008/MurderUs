// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_destruye_camara_jugador(){
	if (global.camara != noone){
		camera_destroy(global.camara)
		global.camara = noone
	}
}