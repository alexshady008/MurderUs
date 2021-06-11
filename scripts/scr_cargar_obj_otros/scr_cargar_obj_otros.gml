// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cargar_obj_otros(objetoTipo, X, Y){
	switch(objetoTipo)
	{
		/*case 1: instance_create_depth(X,Y,-Y,obj_maquina_ver_minimapa_personajes)  break
		case 2: instance_create_depth(X,Y,global.depth_piso,obj_agujero)  break
		case 3: instance_create_depth(X,Y,global.depth_piso,obj_agujero_falso)  break*/
		case 1: instance_create_depth(X,Y,-Y,obj_senializacion4)  break
		case 2: instance_create_depth(X,Y,-Y,obj_senializacion3)  break
		case 3: instance_create_depth(X,Y,-Y,obj_senializacion)  break
		case 4: instance_create_depth(X,Y,-Y,obj_valla1)  break
		case 5: instance_create_depth(X,Y,-Y,obj_puerta_metalica_piso)  break
		case 6: instance_create_depth(X,Y,-Y,obj_puerta_desgastada)  break
		case 7: instance_create_depth(X,Y,-Y,obj_cueva_con_puerta)  break
		case 8: instance_create_depth(X,Y,-Y,obj_cueva2)  break
		case 9: instance_create_depth(X,Y,global.depth_piso,obj_hueco)  break
		case 10: instance_create_depth(X,Y,-Y,obj_cueva)  break
		case 11: instance_create_depth(X,Y,-Y,obj_cueva3)  break
		case 12: instance_create_depth(X,Y,global.depth_piso,obj_hueco_chico)  break
		case 13: instance_create_depth(X,Y,global.depth_piso,obj_lava)  break
		case 14: instance_create_depth(X,Y,global.depth_piso,obj_fosil2)  break
		case 15: instance_create_depth(X,Y,global.depth_piso,obj_fosil1)  break
	}
}

