// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_crear_obj_editor(){
	var obj = noone
	
	switch(global.categoria_obj)
	{
		//TAREAS
		case 1: scr_crear_tareas(X,Y)  break;
		//PUERTAS
		case 2: obj = scr_crear_puertas(X, Y) break;
		//SALA PRINCIPAL
		case 3: obj = scr_crear_obj_sala_principal(X, Y) break;
		//DORMITORIO
		case 4: obj = scr_crear_obj_dormitorio(X, Y) break;
		//EXPERIMENTOS
		case 5: obj = scr_crear_obj_experimentos(X, Y) break;
		//MAQUINARIA
		case 6: obj = scr_crear_obj_maquinaria(X, Y) break;
		//DEPOSITO
		case 7: obj = scr_crear_obj_almacen(X, Y) break;
		//CONTROL
		case 8: obj = scr_crear_obj_control(X, Y) break;
		//ENERGIA
		case 9: obj = scr_crear_obj_energia(X, Y) break;
		//JARDIN
		case 10: obj = scr_crear_obj_jardin(X, Y) break;
		//MINERALES
		case 11: obj = scr_crear_obj_minerales(X, Y) break;
		//OTROS
		case 12: obj = scr_crear_obj_otros(X, Y) break;
		//INTERACTIVOS
		case 13: obj = scr_crear_obj_interactivos(X, Y) break;

		
		/*
		// Salon Principal
		case 3: global.max_listas_obj = 2 break;
		// Dormitorio
		case 4: global.max_listas_obj = 2 break;
		// Ciencia
		case 5: global.max_listas_obj = 2 break;
		// Maquinaria
		case 6: global.max_listas_obj = 2 break;
		// Deposito
		case 7: global.max_listas_obj = 2 break;
		// Control
		case 8: global.max_listas_obj = 2 break;
		// Energia
		case 9: global.max_listas_obj = 2 break;
		// Jardin
		case 10: global.max_listas_obj = 3 break;
		// Minerales
		case 11: global.max_listas_obj = 2 break;
		// Otros
		case 12: global.max_listas_obj = 2 break;
		*/
	}
}