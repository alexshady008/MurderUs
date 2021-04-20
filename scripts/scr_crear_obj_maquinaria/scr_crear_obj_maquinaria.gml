// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_crear_obj_maquinaria(X, Y){
	var obj = noone
	
		switch(global.sel_objeto){
			case 1: obj = instance_create_depth(X,Y,-Y,obj_maquina6)  break
			case 2: obj = instance_create_depth(X,Y,-Y,obj_excavadora)  break
			case 3: obj = instance_create_depth(X,Y,-Y,obj_valvulas_agua)  break
			case 4: obj = instance_create_depth(X,Y,-Y,obj_silo)  break
			case 5: obj = instance_create_depth(X,Y,-Y,obj_tanques_agua)  break
			case 6: obj = instance_create_depth(X,Y,-Y,obj_termostato)  break
			case 7: obj = instance_create_depth(X,Y,-Y,obj_maquina4)  break
			case 8: obj = instance_create_depth(X,Y,-Y,obj_tanque_ventilcion)  break
			case 9: obj = instance_create_depth(X,Y,-Y,obj_tubo_agua)  break
			case 10: obj = instance_create_depth(X,Y,-Y,obj_tubo_gas)  break
			case 11: obj = instance_create_depth(X,Y,-Y,obj_caldera_ventilacion)  break
			case 12: obj = instance_create_depth(X,Y,-Y,obj_caldera_abierta)  break
			case 13: obj = instance_create_depth(X,Y,-Y,obj_gabinete)  break
			case 14: obj = instance_create_depth(X,Y,-Y,obj_pozo_agua)  break
			case 15: obj = instance_create_depth(X,Y,-Y,obj_garrafa)  break
			case 16: obj = instance_create_depth(X,Y,-Y,obj_maquina5_cierra)  break
			case 17: obj = instance_create_depth(X,Y,-Y,obj_cocina_garrafa)  break
			case 18: obj = instance_create_depth(X,Y,-Y,obj_escalera_aquatica)  break
			case 19: obj = instance_create_depth(X,Y,-Y,obj_cinta_transportadora2)  break
			case 20: obj = instance_create_depth(X,Y,-Y,obj_caldera)  break
			case 21: obj = instance_create_depth(X,Y,-Y,obj_pileta_con_pinza)  break
			case 22: obj = instance_create_depth(X,Y,-Y,obj_bloque_hierro)  break
			case 23: obj = instance_create_depth(X,Y,-Y,obj_tablas_madera)  break
			case 24: obj = instance_create_depth(X,Y,-Y,obj_tubos_metal)  break
			case 25: obj = instance_create_depth(X,Y,-Y,obj_baul_desechos)  break
			case 26: obj = instance_create_depth(X,Y,-Y,obj_vehiculo)  break
			case 27: obj = instance_create_depth(X,Y,-Y,obj_yunque_hierro)  break
			case 28: obj = instance_create_depth(X,Y,-Y,obj_puerta_submarino)  break
		}
		
		return obj
}