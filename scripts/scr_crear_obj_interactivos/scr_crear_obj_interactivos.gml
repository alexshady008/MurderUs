// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_crear_obj_interactivos(X, Y){
	var obj = noone
	
		switch(global.sel_objeto){
			case 1: obj = instance_create_depth(X,Y,global.depth_piso,obj_agujero)  break
			case 2: obj = instance_create_depth(X,Y,-Y,obj_maquina_ver_minimapa_personajes)  break
			case 3: obj = instance_create_depth(X,Y,-Y,obj_monitores_ver_camaras)  break
			case 4: obj = instance_create_depth(X,Y,-Y,obj_hongo_escaner)  break
		}
		
		return obj
}