// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cargar_obj_sala_principal(objetoTipo, X, Y){
	switch(objetoTipo)
	{
		// Puertas
		case 1:  instance_create_depth(X,Y,-Y,obj_fuente)  break
		case 2:  instance_create_depth(X,Y,-Y,obj_fuente2)  break
		case 3:  instance_create_depth(X,Y,-Y,obj_mesa_principal)  break
		case 4:  instance_create_depth(X,Y,-Y,obj_mesa)  break
		case 5:  instance_create_depth(X,Y,-Y,obj_barra_con_sillas)  break
		case 6:  instance_create_depth(X,Y,-Y,obj_silla2)  break
		case 7:  instance_create_depth(X,Y,-Y,obj_silla1)  break
		case 8:  instance_create_depth(X,Y,-Y,obj_barra)  break
		case 9:  instance_create_depth(X,Y,-Y,obj_mezada_cocina)  break
		case 10:  instance_create_depth(X,Y,-Y,obj_mueble_laptop)  break
		case 11:  instance_create_depth(X,Y,-Y,obj_maquina_expendedora)  break
		case 12:  instance_create_depth(X,Y,-Y,obj_armario)  break
		case 13:  instance_create_depth(X,Y,-Y,obj_cafetera)  break
		case 14:  instance_create_depth(X,Y,-Y,obj_dispenser)  break
		case 15:  instance_create_depth(X,Y,-Y,obj_escritorio_chico)  break
		case 16:  instance_create_depth(X,Y,-Y,obj_aire_acondicionado)  break
		case 17:  instance_create_depth(X,Y,-Y,obj_pizarra)  break
		case 18:  instance_create_depth(X,Y,-Y,obj_silla_oficina)  break
		case 19:  instance_create_depth(X,Y,-Y,obj_cartel2)  break
		case 20:  instance_create_depth(X,Y,-Y,obj_cartel1)  break
		case 21:  instance_create_depth(X,Y,-Y,obj_basurero)  break
		case 22:  instance_create_depth(X,Y,-Y,obj_planta_adorno)  break
		case 23:  instance_create_depth(X,Y,-Y,obj_escritorio2_chico)  break
		case 24:  instance_create_depth(X,Y,-Y,obj_cajonera)  break
		case 25:  instance_create_depth(X,Y,-Y,obj_silla2_gamers)  break
		case 26:  instance_create_depth(X,Y,-Y,obj_telefono)  break
		case 27:  instance_create_depth(X,Y,-Y,obj_silla_gamers)  break
		case 28:  instance_create_depth(X,Y,-Y,obj_espejo)  break
	}
}

