// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_crear_obj_energia(X, Y){
	var obj = noone
	
		switch(global.sel_objeto){
			case 1: obj = instance_create_depth(X,Y,-Y,obj_gas_tubos_bateria)  break
			case 2: obj = instance_create_depth(X,Y,-Y,obj_maquina2_energia)  break
			case 3: obj = instance_create_depth(X,Y,-Y,obj_generador_electrico)  break
			case 4: obj = instance_create_depth(X,Y,-Y,obj_baterias_pila)  break
			case 5: obj = instance_create_depth(X,Y,-Y,obj_fuente_energia)  break
			case 6: obj = instance_create_depth(X,Y,-Y,obj_maquina_energia)  break
			case 7: obj = instance_create_depth(X,Y,-Y,obj_carrito_baterias)  break
			case 8: obj = instance_create_depth(X,Y,-Y,obj_bateria2)  break
			case 9: obj = instance_create_depth(X,Y,-Y,obj_bateria)  break
			case 10: obj = instance_create_depth(X,Y,-Y,obj_generador_electrico2)  break
			case 11: obj = instance_create_depth(X,Y,-Y,obj_comandos_electricidad)  break
			case 12: obj = instance_create_depth(X,Y,-Y,obj_tubo_extractor)  break
			case 13: obj = instance_create_depth(X,Y,-Y,obj_carrito_laptop)  break
			case 14: obj = instance_create_depth(X,Y,-Y,obj_vallado_electrico)  break
			case 15: obj = instance_create_depth(X,Y,-Y,obj_servidor4)  break
			case 16: obj = instance_create_depth(X,Y,-Y,obj_servidor3)  break
			case 17: obj = instance_create_depth(X,Y,-Y,obj_servidor2)  break
			case 18: obj = instance_create_depth(X,Y,-Y,obj_servidor)  break
			case 19: obj = instance_create_depth(X,Y,-Y,obj_gabinete_electrico5)  break
			case 20: obj = instance_create_depth(X,Y,-Y,obj_gabinete_electrico4)  break
			case 21: obj = instance_create_depth(X,Y,-Y,obj_gabinete_electrico3)  break
			case 22: obj = instance_create_depth(X,Y,-Y,obj_gabinete_electrico2)  break
			case 23: obj = instance_create_depth(X,Y,-Y,obj_gabinete_electrico)  break
			case 24: obj = instance_create_depth(X,Y,-Y,obj_estabilizadores)  break
			case 25: obj = instance_create_depth(X,Y,-Y,obj_circuito_pared)  break
			case 26: obj = instance_create_depth(X,Y,global.depth_piso,obj_piso_circuito)  break
			case 27: obj = instance_create_depth(X,Y,global.depth_piso,obj_cables)  break
			case 28: obj = instance_create_depth(X,Y,-Y,obj_computadora)  break
		}
		
		return obj
}