/// @description Contr si se completa la tarea
// Puede escribir su código en este editor


if !(global.tarea_completada)
{
	#region Comprueba si se completo la tarea
	if (total_objetos_organizar!=false){
		var objetos_completados = 0
		for(i=0 ; i<total_objetos_organizar ; i++){
			if (objeto[i].completado) objetos_completados++
		}
		
		if (objetos_completados>=total_objetos_organizar) scr_contr_tarea_completada()
	} 
	
	#endregion
}


// Destruye la tarea
if (instance_exists(obj_contr_animacion_muerte) or global.estadoJuego!="jugando") instance_destroy()