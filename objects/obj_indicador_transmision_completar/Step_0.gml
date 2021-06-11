/// @description Contr su movimiento
// Puede escribir su código en este editor

if (instance_exists(obj_tareas_completar)){
	
#region Contr cuando se presiona
	if (global.tarea_completada==false and presionado==true){
		if (x>=posX_minimo and x<=posX_maximo){
			x = mouse_x
			var posX_actual = x-posX_minimo
			var ancho_total_pixeles = 736
			var punto_actual = (posX_actual/ancho_total_pixeles)*100
			obj_tareas_completar.punto_actual[num] = punto_actual
		}
	}	
#endregion

#region Contr su limites en X
	x = median( posX_minimo, x, posX_maximo )
#endregion

}

//Se destruye
else {
	instance_destroy()
}	