// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_crear_obj_experimentos(X, Y){
	var obj = noone
	
		switch(global.sel_objeto){
			case 1: obj = instance_create_depth(X,Y,-Y,obj_manos_roboticas)  break
			case 2: obj = instance_create_depth(X,Y,-Y,obj_ventana_experimento)  break
			case 3: obj = instance_create_depth(X,Y,-Y,obj_tubo_experimento3_pared)  break
			case 4: obj = instance_create_depth(X,Y,-Y,obj_tubo_experimento2)  break
			case 5: obj = instance_create_depth(X,Y,-Y,obj_tubo_experimento)  break
			case 6: obj = instance_create_depth(X,Y,-Y,obj_capsula_planta)  break
			case 7: obj = instance_create_depth(X,Y,-Y,obj_experimento4_hongo_diamante_planta)  break
			case 8: obj = instance_create_depth(X,Y,-Y,obj_experimento_planta)  break
			case 9: obj = instance_create_depth(X,Y,-Y,obj_experimento2_roca)  break
			case 10: obj = instance_create_depth(X,Y,-Y,obj_experimento_adn)  break
			case 11: obj = instance_create_depth(X,Y,-Y,obj_experimento3_diamante)  break
			case 12: obj = instance_create_depth(X,Y,-Y,obj_planta2_experimento)  break
			case 13: obj = instance_create_depth(X,Y,-Y,obj_planta)  break
			case 14: obj = instance_create_depth(X,Y,-Y,obj_experimento)  break
			case 15: obj = instance_create_depth(X,Y,-Y,obj_maquina_control_medico)  break
			case 16: obj = instance_create_depth(X,Y,-Y,obj_objetos_cubiertos)  break
			case 17: obj = instance_create_depth(X,Y,-Y,obj_experimento_grande)  break
			case 18: obj = instance_create_depth(X,Y,-Y,obj_ventilacion2)  break
			case 19: obj = instance_create_depth(X,Y,-Y,obj_escritorio_con_experimento)  break
			case 20: obj = instance_create_depth(X,Y,-Y,obj_maquina_con_silla)  break
			case 21: obj = instance_create_depth(X,Y,-Y,obj_carrito_medicinas)  break
			case 22: obj = instance_create_depth(X,Y,-Y,obj_heladera_experimentos)  break
			case 23: obj = instance_create_depth(X,Y,-Y,obj_heladera_experimentos2)  break
			case 24: obj = instance_create_depth(X,Y,-Y,obj_sostenedor_suero)  break
			case 25: obj = instance_create_depth(X,Y,-Y,obj_botiquin)  break
			case 26: obj = instance_create_depth(X,Y,-Y,obj_maquina3_control_medico)  break
			case 27: obj = instance_create_depth(X,Y,-Y,obj_camilla)  break
			case 28: obj = instance_create_depth(X,Y,-Y,obj_maquina2_control_medico)  break
		}
		
		return obj
}