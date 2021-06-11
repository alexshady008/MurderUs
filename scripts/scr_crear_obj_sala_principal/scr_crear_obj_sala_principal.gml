// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_crear_obj_sala_principal(X, Y){
	var obj = noone
	
		switch(global.sel_objeto){
			case 1: obj = instance_create_depth(X,Y,-Y,obj_fuente)  break
			case 2: obj = instance_create_depth(X,Y,-Y,obj_fuente2)  break
			case 3: obj = instance_create_depth(X,Y,-Y,obj_mesa_principal)  break
			case 4: obj = instance_create_depth(X,Y,-Y,obj_mesa)  break
			case 5: obj = instance_create_depth(X,Y,-Y,obj_barra_con_sillas)  break
			case 6: obj = instance_create_depth(X,Y,-Y,obj_silla2)  break
			case 7: obj = instance_create_depth(X,Y,-Y,obj_silla1)  break
			case 8: obj = instance_create_depth(X,Y,-Y,obj_barra)  break
			case 9: obj = instance_create_depth(X,Y,-Y,obj_mezada_cocina)  break
			case 10: obj = instance_create_depth(X,Y,-Y,obj_mueble_laptop)  break
			case 11: obj = instance_create_depth(X,Y,-Y,obj_maquina_expendedora)  break
			case 12: obj = instance_create_depth(X,Y,-Y,obj_armario)  break
			case 13: obj = instance_create_depth(X,Y,-Y,obj_cafetera)  break
			case 14: obj = instance_create_depth(X,Y,-Y,obj_dispenser)  break
			case 15: obj = instance_create_depth(X,Y,-Y,obj_escritorio_chico)  break
			case 16: obj = instance_create_depth(X,Y,-Y,obj_aire_acondicionado)  break
			case 17: obj = instance_create_depth(X,Y,-Y,obj_pizarra)  break
			case 18: obj = instance_create_depth(X,Y,-Y,obj_silla_oficina)  break
			case 19: obj = instance_create_depth(X,Y,-Y,obj_cartel2)  break
			case 20: obj = instance_create_depth(X,Y,-Y,obj_cartel1)  break
			case 21: obj = instance_create_depth(X,Y,-Y,obj_basurero)  break
			case 22: obj = instance_create_depth(X,Y,-Y,obj_planta_adorno)  break
			case 23: obj = instance_create_depth(X,Y,-Y,obj_escritorio2_chico)  break
			case 24: obj = instance_create_depth(X,Y,-Y,obj_cajonera)  break
			case 25: obj = instance_create_depth(X,Y,-Y,obj_silla2_gamers)  break
			case 26: obj = instance_create_depth(X,Y,-Y,obj_telefono)  break
			case 27: obj = instance_create_depth(X,Y,-Y,obj_silla_gamers)  break
			case 28: obj = instance_create_depth(X,Y,-Y,obj_espejo)  break
		}
		
		return obj
}