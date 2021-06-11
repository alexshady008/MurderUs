// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cargar_obj_experimentos(objetoTipo, X, Y){
	switch(objetoTipo)
	{
		case 1:  instance_create_depth(X,Y,-Y,obj_manos_roboticas)  break
		case 2:  instance_create_depth(X,Y,-Y,obj_ventana_experimento)  break
		case 3:  instance_create_depth(X,Y,-Y,obj_tubo_experimento3_pared)  break
		case 4:  instance_create_depth(X,Y,-Y,obj_tubo_experimento2)  break
		case 5:  instance_create_depth(X,Y,-Y,obj_tubo_experimento)  break
		case 6:  instance_create_depth(X,Y,-Y,obj_capsula_planta)  break
		case 7:  instance_create_depth(X,Y,-Y,obj_experimento4_hongo_diamante_planta)  break
		case 8:  instance_create_depth(X,Y,-Y,obj_experimento_planta)  break
		case 9:  instance_create_depth(X,Y,-Y,obj_experimento2_roca)  break
		case 10:  instance_create_depth(X,Y,-Y,obj_experimento_adn)  break
		case 11:  instance_create_depth(X,Y,-Y,obj_experimento3_diamante)  break
		case 12:  instance_create_depth(X,Y,-Y,obj_planta2_experimento)  break
		case 13:  instance_create_depth(X,Y,-Y,obj_planta)  break
		case 14:  instance_create_depth(X,Y,-Y,obj_experimento)  break
		case 15:  instance_create_depth(X,Y,-Y,obj_maquina_control_medico)  break
		case 16:  instance_create_depth(X,Y,-Y,obj_objetos_cubiertos)  break
		case 17:  instance_create_depth(X,Y,-Y,obj_experimento_grande)  break
		case 18:  instance_create_depth(X,Y,-Y,obj_ventilacion2)  break
		case 19:  instance_create_depth(X,Y,-Y,obj_escritorio_con_experimento)  break
		case 20:  instance_create_depth(X,Y,-Y,obj_maquina_con_silla)  break
		case 21:  instance_create_depth(X,Y,-Y,obj_carrito_medicinas)  break
		case 22:  instance_create_depth(X,Y,-Y,obj_heladera_experimentos)  break
		case 23:  instance_create_depth(X,Y,-Y,obj_heladera_experimentos2)  break
		case 24:  instance_create_depth(X,Y,-Y,obj_sostenedor_suero)  break
		case 25:  instance_create_depth(X,Y,-Y,obj_botiquin)  break
		case 26:  instance_create_depth(X,Y,-Y,obj_maquina3_control_medico)  break
		case 27:  instance_create_depth(X,Y,-Y,obj_camilla)  break
		case 28:  instance_create_depth(X,Y,-Y,obj_maquina2_control_medico)  break
	}
}

