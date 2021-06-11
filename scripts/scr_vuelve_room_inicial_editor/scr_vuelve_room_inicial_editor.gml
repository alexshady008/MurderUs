// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_vuelve_room_inicial_editor(){
	if (global.modo_jugabilidad==1) room_goto(rm_crear_sala)
	else {
		if (global.modo_jugabilidad_offline==1) room_goto(rm_config_practicar)
		else if (global.modo_jugabilidad_offline==2) room_goto(rm_config_supervivencia)
	}
}