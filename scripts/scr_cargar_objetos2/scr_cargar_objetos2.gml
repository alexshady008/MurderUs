function scr_cargar_objetos2(argument0, argument1, argument2) {
	var objetoTipo = argument0
	var X = argument1
	var Y = argument2

	switch(objetoTipo)
	{
	#region TAREAS
		case 1: instance_create_depth(X,Y,-Y,obj_pared) break;
		case 2: instance_create_depth(X,Y,global.depth_techo,obj_techo) break;
		case 3: instance_create_depth(X,Y,global.depth_techo,obj_techo_abajo) break;
		case 4: instance_create_depth(X,Y,global.depth_techo,obj_techo_arriba) break;
		case 5: instance_create_depth(X,Y,global.depth_techo,obj_techo_der) break;
		case 6: instance_create_depth(X,Y,global.depth_techo,obj_techo_izq) break;
		case 7: instance_create_depth(X,Y,global.depth_techo,obj_techo_punta_inf_der)  break;
		case 8: instance_create_depth(X,Y,global.depth_techo,obj_techo_punta_inf_izq)  break;
		case 9: instance_create_depth(X,Y,global.depth_techo,obj_techo_punta_sup_der)  break;
		case 10: instance_create_depth(X,Y,global.depth_techo,obj_techo_punta_sup_izq)  break;
		case 11: instance_create_depth(X,Y,global.depth_piso,obj_piso_cesped)  break;
		case 12: instance_create_depth(X,Y,-Y,obj_puerta) break;
		case 13: instance_create_depth(X,Y,global.depth_piso,obj_agujero) break;
		case 14: instance_create_depth(X,Y,global.depth_piso,obj_agujero_falso) break;
	#endregion
	
	// Objetos
	case 15: instance_create_depth(X,Y,-Y,obj_mesa) break;
	case 16: instance_create_depth(X,Y,-Y,obj_caja) break;
	case 17: instance_create_depth(X,Y,-Y,obj_barril) break;
	case 18: instance_create_depth(X,Y,-Y,obj_cama) break;
	case 19: instance_create_depth(X,Y,-Y,obj_computadora) break;
	case 20: instance_create_depth(X,Y,-Y,obj_servidor) break;
	case 21: instance_create_depth(X,Y,-Y,obj_maquina) break;
	case 22: instance_create_depth(X,Y,-Y,obj_experimento) break;
	case 23: instance_create_depth(X,Y,-Y,obj_fuente) break;
	case 24: instance_create_depth(X,Y,-Y,obj_arbol) break;
	case 25: instance_create_depth(X,Y,-Y,obj_arbusto) break;
	case 26: instance_create_depth(X,Y,-Y,obj_roca) break;
	case 27: instance_create_depth(X,Y,-Y,obj_planta) break;
	case 28: instance_create_depth(X,Y,-Y,obj_nave) break;
	// Tareas
	case 29: instance_create_depth(X,Y,-Y,obj_tarea1) break;
	case 30: instance_create_depth(X,Y,-Y,obj_tarea2) break;
	case 31: instance_create_depth(X,Y,-Y,obj_tarea3) break;
	case 32: instance_create_depth(X,Y,-Y,obj_tarea4) break;
	case 33: instance_create_depth(X,Y,-Y,obj_tarea5) break;
	case 34: instance_create_depth(X,Y,-Y,obj_tarea6) break;
	case 35: instance_create_depth(X,Y,-Y,obj_tarea7) break;
	case 36: instance_create_depth(X,Y,-Y,obj_tarea8) break;
	case 37: instance_create_depth(X,Y,-Y,obj_tarea9) break;
	case 38: instance_create_depth(X,Y,-Y,obj_tarea10) break;
	case 39: instance_create_depth(X,Y,-Y,obj_tarea11) break;
	case 40: instance_create_depth(X,Y,-Y,obj_tarea12) break;
	case 41: instance_create_depth(X,Y,-Y,obj_tarea13) break;
	case 42: instance_create_depth(X,Y,-Y,obj_tarea14) break;
	case 43: instance_create_depth(X,Y,-Y,obj_tarea15) break;
	}


}
