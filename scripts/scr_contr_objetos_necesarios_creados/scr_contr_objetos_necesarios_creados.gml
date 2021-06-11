// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_objetos_necesarios_creados(){
	var contr_guardar = true
	#region Crontr que se hayan creados todas las tareas 
		for(i=0 ; i<global.max_tareas_crearse ; i++){
			if (global.tareas_creadas[i] == false) contr_guardar = false
		}
	#endregion
	
	#region COntr que se hayan creado las alcantarillas en el offline
		//if (global.modo_jugabilidad>1){
			if (instance_number(obj_agujero)<=0) contr_guardar = false
		//}
	#endregion
	
	return contr_guardar
}