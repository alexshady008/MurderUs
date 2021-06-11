// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_crear_obj_almacen(X, Y){
	var obj = noone
	
		switch(global.sel_objeto){
			case 1: obj = instance_create_depth(X,Y,-Y,obj_grua)  break
			case 2: obj = instance_create_depth(X,Y,-Y,obj_brazo_metalico2)  break
			case 3: obj = instance_create_depth(X,Y,-Y,obj_brazo_mecanico)  break
			case 4: obj = instance_create_depth(X,Y,-Y,obj_cajas_madera)  break
			case 5: obj = instance_create_depth(X,Y,-Y,obj_caja_robot)  break
			case 6: obj = instance_create_depth(X,Y,-Y,obj_caja_carton)  break
			case 7: obj = instance_create_depth(X,Y,-Y,obj_dron_caja)  break
			case 8: obj = instance_create_depth(X,Y,-Y,obj_caja_metalica2)  break
			case 9: obj = instance_create_depth(X,Y,-Y,obj_caja_metalica)  break
			case 10: obj = instance_create_depth(X,Y,-Y,obj_grua_tapada)  break
			case 11: obj = instance_create_depth(X,Y,-Y,obj_estanteria3)  break
			case 12: obj = instance_create_depth(X,Y,-Y,obj_estanteria4)  break
			case 13: obj = instance_create_depth(X,Y,-Y,obj_estanteria2)  break
			case 14: obj = instance_create_depth(X,Y,-Y,obj_estanteria)  break
			case 15: obj = instance_create_depth(X,Y,-Y,obj_caja)  break
			case 16: obj = instance_create_depth(X,Y,-Y,obj_barriles)  break
			case 17: obj = instance_create_depth(X,Y,-Y,obj_escalera)  break
			case 18: obj = instance_create_depth(X,Y,-Y,obj_caja_madera1)  break
			case 19: obj = instance_create_depth(X,Y,-Y,obj_caja_carton3)  break
			case 20: obj = instance_create_depth(X,Y,-Y,obj_caja_carton2)  break
			case 21: obj = instance_create_depth(X,Y,-Y,obj_caja_madera3)  break
			case 22: obj = instance_create_depth(X,Y,-Y,obj_caja_madera2)  break
			case 23: obj = instance_create_depth(X,Y,-Y,obj_barril)  break
			case 24: obj = instance_create_depth(X,Y,-Y,obj_bolsa3)  break
			case 25: obj = instance_create_depth(X,Y,-Y,obj_baterias_pilas)  break
			case 26: obj = instance_create_depth(X,Y,-Y,obj_cinta_transportadora)  break
			case 27: obj = instance_create_depth(X,Y,-Y,obj_escritorio_caja)  break
			case 28: obj = instance_create_depth(X,Y,-Y,obj_carretilla)  break
		}
		
		return obj
}