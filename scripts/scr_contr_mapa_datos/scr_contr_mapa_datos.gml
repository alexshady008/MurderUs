// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_mapa_datos(){
	var mapa_datos = global.datos_nivel_pers
	var posMapa = string_pos("$",mapa_datos)
	var numMapa = string_copy(mapa_datos,1,posMapa-1)
	//global.datos_nivel_pers = string_delete(mapa_datos, 1, posMapa)
	global.mapa_elegido = real(numMapa)
	switch(global.mapa_elegido){
		case 1: room_goto(rm_nivel1_editor)  break
		case 2: room_goto(rm_nivel2_editor)  break
		case 3: room_goto(rm_nivel3_editor)  break
	}
}