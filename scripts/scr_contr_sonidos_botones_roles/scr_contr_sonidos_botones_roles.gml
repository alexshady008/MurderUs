// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_sonidos_botones_roles(){
	
	#region Contr botones de cada rol
		if (global.jugador_tipo=="IMPOSTOR"){
			//COnfig variable
			global.asesinar = global.tiempoEsperaAsesinar
			// Crea sus botones
			if !(instance_exists(obj_btn_asesinar)) instance_create_layer(1200,48,"Interfaz",obj_btn_asesinar)
			if (global.modo_jugabilidad==1) if !(instance_exists(obj_btn_sabotear)) instance_create_layer(1200,48,"Interfaz",obj_btn_sabotear)
			else if !(instance_exists(obj_btn_ver_minimapa)) instance_create_layer(1200,48,"Interfaz",obj_btn_ver_minimapa)
		}
		else {
			if !(instance_exists(obj_btn_ver_minimapa)) instance_create_layer(1200,48,"Interfaz",obj_btn_ver_minimapa)
			switch(global.jugador_tipo){
				case "DETECTIVE":
					//Crea su boton
					if !(instance_exists(obj_btn_investigar)) instance_create_layer(1200,48,"Interfaz",obj_btn_investigar)
				break;
				case "COMPLICE":
					//Crea su boton
					if !(instance_exists(obj_btn_limpiar)) instance_create_layer(1200,48,"Interfaz",obj_btn_limpiar)
				break
			}
		}
	#endregion
	
	
	#region Contr musica
		audio_stop_all()
		if (global.jugador_tipo=="IMPOSTOR" or global.jugador_tipo=="COMPLICE"){
			if (global.musica) audio_play_sound(snd_asesino_elegido,100,false)
		}
		else if (global.jugador_tipo=="TRIPULANTE" or global.jugador_tipo=="DETECTIVE"){
			if (global.musica) audio_play_sound(snd_tripulante_elegido,100,false)
		}
	#endregion
	
}