// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_crear_obj_control(X, Y){
	var obj = noone
	
		switch(global.sel_objeto){
			case 1: obj = instance_create_depth(X,Y,-Y,obj_nave)  break
			case 2: obj = instance_create_depth(X,Y,-Y,obj_control_navegacion)  break
			case 3: obj = instance_create_depth(X,Y,-Y,obj_mapa_espacial)  break
			case 4: obj = instance_create_depth(X,Y,-Y,obj_transmisor)  break
			case 5: obj = instance_create_depth(X,Y,-Y,obj_radio_satelital)  break
			case 6: obj = instance_create_depth(X,Y,-Y,obj_telescopio)  break
			case 7: obj = instance_create_depth(X,Y,-Y,obj_transmisor_antena)  break
			case 8: obj = instance_create_depth(X,Y,-Y,obj_mini_satelite)  break
			case 9: obj = instance_create_depth(X,Y,-Y,obj_panel_solar)  break
			case 10: obj = instance_create_depth(X,Y,-Y,obj_buscador_de_metal)  break
			case 11: obj = instance_create_depth(X,Y,-Y,obj_rover)  break
			case 12: obj = instance_create_depth(X,Y,-Y,obj_dron_pared)  break
			case 13: obj = instance_create_depth(X,Y,-Y,obj_capsula_clave)  break
			case 14: obj = instance_create_depth(X,Y,-Y,obj_bloque_pared_especial)  break
			case 15: obj = instance_create_depth(X,Y,-Y,obj_barra_seguridad2)  break
			case 16: obj = instance_create_depth(X,Y,-Y,obj_barra_seguridad)  break
			case 17: obj = instance_create_depth(X,Y,-Y,obj_equipaje_espacial)  break
			case 18: obj = instance_create_depth(X,Y,-Y,obj_panel_comandos)  break
			case 19: obj = instance_create_depth(X,Y,-Y,obj_panel_energia)  break
			case 20: obj = instance_create_depth(X,Y,-Y,obj_panel_electrico)  break
			case 21: obj = instance_create_depth(X,Y,-Y,obj_panel_pared2)  break
			case 22: obj = instance_create_depth(X,Y,-Y,obj_panel_pared)  break
			case 23: obj = instance_create_depth(X,Y,-Y,obj_panel2_grafico)  break
			case 24: obj = instance_create_depth(X,Y,-Y,obj_computadora3)  break
			case 25: obj = instance_create_depth(X,Y,-Y,obj_computadora2)  break
			case 26: obj = instance_create_depth(X,Y,-Y,obj_torre_control)  break
			case 27: obj = instance_create_depth(X,Y,-Y,obj_escritorio_pc)  break
			case 28: obj = instance_create_depth(X,Y,-Y,obj_mesa_tv)  break
		}
		
		return obj
}