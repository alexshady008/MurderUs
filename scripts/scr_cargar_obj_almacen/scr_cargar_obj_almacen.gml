// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cargar_obj_almacen(objetoTipo, X, Y){
	switch(objetoTipo)
	{
		case 1: instance_create_depth(X,Y,-Y,obj_grua)  break
		case 2: instance_create_depth(X,Y,-Y,obj_brazo_metalico2)  break
		case 3: instance_create_depth(X,Y,-Y,obj_brazo_mecanico)  break
		case 4: instance_create_depth(X,Y,-Y,obj_cajas_madera)  break
		case 5: instance_create_depth(X,Y,-Y,obj_caja_robot)  break
		case 6: instance_create_depth(X,Y,-Y,obj_caja_carton)  break
		case 7: instance_create_depth(X,Y,-Y,obj_dron_caja)  break
		case 8: instance_create_depth(X,Y,-Y,obj_caja_metalica2)  break
		case 9: instance_create_depth(X,Y,-Y,obj_caja_metalica)  break
		case 10: instance_create_depth(X,Y,-Y,obj_grua_tapada)  break
		case 11: instance_create_depth(X,Y,-Y,obj_estanteria3)  break
		case 12: instance_create_depth(X,Y,-Y,obj_estanteria4)  break
		case 13: instance_create_depth(X,Y,-Y,obj_estanteria2)  break
		case 14: instance_create_depth(X,Y,-Y,obj_estanteria)  break
		case 15: instance_create_depth(X,Y,-Y,obj_caja)  break
		case 16: instance_create_depth(X,Y,-Y,obj_barriles)  break
		case 17: instance_create_depth(X,Y,-Y,obj_escalera)  break
		case 18: instance_create_depth(X,Y,-Y,obj_caja_madera1)  break
		case 19: instance_create_depth(X,Y,-Y,obj_caja_carton3)  break
		case 20: instance_create_depth(X,Y,-Y,obj_caja_carton2)  break
		case 21: instance_create_depth(X,Y,-Y,obj_caja_madera3)  break
		case 22: instance_create_depth(X,Y,-Y,obj_caja_madera2)  break
		case 23: instance_create_depth(X,Y,-Y,obj_barril)  break
		case 24: instance_create_depth(X,Y,-Y,obj_bolsa3)  break
		case 25: instance_create_depth(X,Y,-Y,obj_baterias_pilas)  break
		case 26: instance_create_depth(X,Y,-Y,obj_cinta_transportadora)  break
		case 27: instance_create_depth(X,Y,-Y,obj_escritorio_caja)  break
		case 28: instance_create_depth(X,Y,-Y,obj_carretilla)  break
}
}

