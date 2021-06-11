// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_crear_obj_otros(X, Y){
	var obj = noone
	
		switch(global.sel_objeto){
			/*case 1: obj = instance_create_depth(X,Y,-Y,obj_maquina_ver_minimapa_personajes)  break
			case 2: obj = instance_create_depth(X,Y,global.depth_piso,obj_agujero)  break
			case 3: obj = instance_create_depth(X,Y,global.depth_piso,obj_agujero_falso)  break*/
			case 1: obj = instance_create_depth(X,Y,-Y,obj_senializacion4)  break //
			case 2: obj = instance_create_depth(X,Y,-Y,obj_senializacion3)  break //
			case 3: obj = instance_create_depth(X,Y,-Y,obj_senializacion)  break //
			case 4: obj = instance_create_depth(X,Y,-Y,obj_valla1)  break //
			case 5: obj = instance_create_depth(X,Y,-Y,obj_puerta_metalica_piso)  break //
			case 6: obj = instance_create_depth(X,Y,-Y,obj_puerta_desgastada)  break //
			case 7: obj = instance_create_depth(X,Y,-Y,obj_cueva_con_puerta)  break //
			case 8: obj = instance_create_depth(X,Y,-Y,obj_cueva2)  break //
			case 9: obj = instance_create_depth(X,Y,global.depth_piso,obj_hueco)  break //
			case 10: obj = instance_create_depth(X,Y,-Y,obj_cueva)  break //
			case 11: obj = instance_create_depth(X,Y,-Y,obj_cueva3)  break //
			case 12: obj = instance_create_depth(X,Y,global.depth_piso,obj_hueco_chico)  break //
			case 13: obj = instance_create_depth(X,Y,global.depth_piso,obj_lava)  break //
			case 14: obj = instance_create_depth(X,Y,global.depth_piso,obj_fosil2)  break //
			case 15: obj = instance_create_depth(X,Y,global.depth_piso,obj_fosil1)  break //
		}
		
		return obj
}