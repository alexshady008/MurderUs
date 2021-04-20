// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_cutscene_votacion(){
	switch(global.tipo_mapa_a_jugar){
		case 1: if !(instance_exists(obj_contr_votacion_spaceship)) instance_create_layer(0,0,"Discusion",obj_contr_votacion_spaceship) break
		case 2: if !(instance_exists(obj_contr_votacion_lyra)) instance_create_layer(0,0,"Discusion",obj_contr_votacion_lyra) break
		case 3: if !(instance_exists(obj_contr_votacion_centryx)) instance_create_layer(0,0,"Discusion",obj_contr_votacion_centryx) break
		default: 
			switch(global.mapa_elegido){
				case 1: if !(instance_exists(obj_contr_votacion_spaceship)) instance_create_layer(0,0,"Discusion",obj_contr_votacion_spaceship)  break
				case 2: if !(instance_exists(obj_contr_votacion_lyra)) instance_create_layer(0,0,"Discusion",obj_contr_votacion_lyra)  break
				case 3: if !(instance_exists(obj_contr_votacion_centryx)) instance_create_layer(0,0,"Discusion",obj_contr_votacion_centryx)  break
			}
		break
	}
}
