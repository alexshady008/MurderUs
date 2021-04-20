// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cargar_puertas(objetoTipo, X, Y){
	switch(objetoTipo)
	{
		// Puertas
		case 1: instance_create_depth(X,Y,-Y,obj_puerta) break;
		case 2: instance_create_depth(X,Y,-Y,obj_puerta2) break;
		case 3: instance_create_depth(X,Y,-Y,obj_puerta3) break;
		case 4: instance_create_depth(X,Y,-Y,obj_puerta4) break;
		case 5: instance_create_depth(X,Y,-Y,obj_puerta5) break;
		case 6: instance_create_depth(X,Y,-Y,obj_puerta5_diagonal) break;
		case 7: instance_create_depth(X,Y,-Y,obj_puerta6)  break;
		case 8: instance_create_depth(X,Y,-Y,obj_puerta6_diagonal)  break;
	}
}