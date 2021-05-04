/// @description Contr si se completa la tarea
// Puede escribir su código en este editor
if !(global.tarea_completada)
{
	#region Comprueba si se completo la tarea
	if (total_puntos_objetivos!=false){
		var cant_completados = 0 
		for(i=0 ; i<total_puntos_objetivos ; i++){
			if ((punto_actual[i]>=punto_objetivo[i]-rango_objetivo) and (punto_actual[i]<=punto_objetivo[i]+rango_objetivo)) {
				completando[i] = true
				cant_completados++
				//if (porc_completado<100) porc_completado+=0.3
				//else scr_contr_tarea_completada()
			}
			else {
				completando[i] = false
			}
			
			//Retrocede el punto actual
			if (retroceso) {
				if (punto_actual[i]>0)  {
					if (tipo!=3) punto_actual[i]-=0.1  //0.1
					else punto_actual[i]-=0.03  //0.1
				}
			}
		}
		
		#region Aumenta el porcentaje completado
			if (cant_completados==total_puntos_objetivos){
				if (porc_completado<100) porc_completado+=0.3
				else scr_contr_tarea_completada()
			}
		#endregion
	
		#region Retrocede el porcentaje completado
			if (retroceso) {
				if (porc_completado>0) porc_completado-=0.15
			}
		#endregion
	
	}	
	#endregion
	
}



// Destruye la tarea
if (instance_exists(obj_contr_animacion_muerte) or global.estadoJuego!="jugando") instance_destroy()