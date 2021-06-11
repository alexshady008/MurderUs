// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_crea_camara_jugador(){
	scr_destruye_camara_jugador()
	
	if (global.jugador!=noone and global.camara==noone){
		var ancho = 1280
		var alto = 720
		view_visible[0] = true
		global.camara = camera_create_view(0,0,1280,720,0,global.jugador,-1,-1,640,360)
		view_camera[0] = global.camara
		view_hport[0] = alto
		view_wport[0] = ancho
	}
}