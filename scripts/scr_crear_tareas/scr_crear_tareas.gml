// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_crear_tareas(X,Y){
	var tarea = noone
	switch(global.mapa_elegido){
		
		#region Mapa 1
		case 1: 
			switch(global.sel_objeto){
				case 1: tarea = instance_create_depth(X,Y,-Y,obj_tarea12) break;
				case 2: tarea = instance_create_depth(X,Y,-Y,obj_tarea5) break;
				case 3: tarea = instance_create_depth(X,Y,-Y,obj_tarea3) break;
				case 4: tarea = instance_create_depth(X,Y,-Y,obj_tarea1) break;
				case 5: tarea = instance_create_depth(X,Y,-Y,obj_tarea8) break;
				case 6: tarea = instance_create_depth(X,Y,-Y,obj_tarea4) break;
				case 7: tarea = instance_create_depth(X,Y,-Y,obj_tarea9) break;
				case 8: tarea = instance_create_depth(X,Y,-Y,obj_tarea6) break;
				case 9: tarea = instance_create_depth(X,Y,-Y,obj_tarea10) break;
				case 10: tarea = instance_create_depth(X,Y,-Y,obj_tarea7) break;
			}
		break;  
		#endregion
					
		#region Mapa 2
		case 2: 
			switch(global.sel_objeto){
				case 1: tarea = instance_create_depth(X,Y,-Y,obj_tarea11) break;
				case 2: tarea = instance_create_depth(X,Y,-Y,obj_tarea14) break;
				case 3: tarea = instance_create_depth(X,Y,-Y,obj_tarea2) break;
				case 4: tarea = instance_create_depth(X,Y,-Y,obj_tarea12) break;
				case 5: tarea = instance_create_depth(X,Y,-Y,obj_tarea10) break;
				case 6: tarea = instance_create_depth(X,Y,-Y,obj_tarea15) break;
				case 7: tarea = instance_create_depth(X,Y,-Y,obj_tarea4) break;
				case 8: tarea = instance_create_depth(X,Y,-Y,obj_tarea13) break;
			}
		break;  
		#endregion
		
		#region Mapa 3
		case 3: 
			switch(global.sel_objeto){
				case 1: tarea = instance_create_depth(X,Y,-Y,obj_tarea_analisis1) break;
				case 2: tarea = instance_create_depth(X,Y,-Y,obj_tarea_rompecabezas1) break;
				case 3: tarea = instance_create_depth(X,Y,-Y,obj_tarea_completar1) break;
				case 4: tarea = instance_create_depth(X,Y,-Y,obj_tarea_mantenimiento2) break;
				case 5: tarea = instance_create_depth(X,Y,-Y,obj_tarea_recoleccion1) break;
				case 6: tarea = instance_create_depth(X,Y,-Y,obj_tarea_mantenimiento1) break;
				case 7: tarea = instance_create_depth(X,Y,-Y,obj_tarea_organizacion1) break;
				case 8: tarea = instance_create_depth(X,Y,-Y,obj_tarea_mantenimiento3) break;
				case 9: tarea = instance_create_depth(X,Y,-Y,obj_tarea_analisis2) break;
				case 10: tarea = instance_create_depth(X,Y,-Y,obj_tarea_completar2) break;
				case 11: tarea = instance_create_depth(X,Y,-Y,obj_tarea_analisis3) break;
				case 12: tarea = instance_create_depth(X,Y,-Y,obj_tarea_completar3) break;
				case 13: tarea = instance_create_depth(X,Y,-Y,obj_tarea_recoleccion2) break;
				case 14: tarea = instance_create_depth(X,Y,-Y,obj_tarea_recoleccion3) break;
			}
		break;  
		#endregion
	}
				
	if (tarea!=noone and instance_exists(tarea)) tarea.alarm[0] = 1
	//tarea.num_tarea = global.sel_objeto-1
	
	
}