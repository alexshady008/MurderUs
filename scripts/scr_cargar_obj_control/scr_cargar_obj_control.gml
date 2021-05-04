// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cargar_obj_control(objetoTipo, X, Y){
	switch(objetoTipo)
	{
		case 1: instance_create_depth(X,Y,-Y,obj_nave)  break
		case 2: instance_create_depth(X,Y,-Y,obj_control_navegacion)  break
		case 3: instance_create_depth(X,Y,-Y,obj_mapa_espacial)  break
		case 4: instance_create_depth(X,Y,-Y,obj_transmisor)  break
		case 5: instance_create_depth(X,Y,-Y,obj_radio_satelital)  break
		case 6: instance_create_depth(X,Y,-Y,obj_telescopio)  break
		case 7: instance_create_depth(X,Y,-Y,obj_transmisor_antena)  break
		case 8: instance_create_depth(X,Y,-Y,obj_mini_satelite)  break
		case 9: instance_create_depth(X,Y,-Y,obj_panel_solar)  break
		case 10: instance_create_depth(X,Y,-Y,obj_buscador_de_metal)  break
		case 11: instance_create_depth(X,Y,-Y,obj_rover)  break
		case 12: instance_create_depth(X,Y,-Y,obj_dron_pared)  break
		case 13: instance_create_depth(X,Y,-Y,obj_capsula_clave)  break
		case 14: instance_create_depth(X,Y,-Y,obj_bloque_pared_especial)  break
		case 15: instance_create_depth(X,Y,-Y,obj_barra_seguridad2)  break
		case 16: instance_create_depth(X,Y,-Y,obj_barra_seguridad)  break
		case 17: instance_create_depth(X,Y,-Y,obj_equipaje_espacial)  break
		case 18: instance_create_depth(X,Y,-Y,obj_panel_comandos)  break
		case 19: instance_create_depth(X,Y,-Y,obj_panel_energia)  break
		case 20: instance_create_depth(X,Y,-Y,obj_panel_electrico)  break
		case 21: instance_create_depth(X,Y,-Y,obj_panel_pared2)  break
		case 22: instance_create_depth(X,Y,-Y,obj_panel_pared)  break
		case 23: instance_create_depth(X,Y,-Y,obj_panel2_grafico)  break
		case 24: instance_create_depth(X,Y,-Y,obj_computadora3)  break
		case 25: instance_create_depth(X,Y,-Y,obj_computadora2)  break
		case 26: instance_create_depth(X,Y,-Y,obj_torre_control)  break
		case 27: instance_create_depth(X,Y,-Y,obj_escritorio_pc)  break
		case 28: instance_create_depth(X,Y,-Y,obj_mesa_tv)  break
}
}

