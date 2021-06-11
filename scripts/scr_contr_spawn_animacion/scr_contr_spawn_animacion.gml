// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_spawn_animacion(contr_pos, personaje){
	if (room==rm_lobby){
		var transportador = contr_pos.transportador
		if (instance_exists(transportador)) {
			transportador.encendido = true
			transportador.iluminar = false
			transportador.index = 0
			transportador.personaje = personaje
			transportador.sprite = 1
			transportador.retener_personaje = true
			//transportador.alarm[0] = transportador.tiempo
			//show_debug_message(global.step_delta)
			if (global.step_delta>1) transportador.alarm[0] = round(transportador.tiempo/global.step_delta)+1
			else transportador.alarm[0] = transportador.tiempo
			personaje.mostrarSpawn = true
		}
	}
}