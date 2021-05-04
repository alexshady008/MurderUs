/// @description Se presiona
// Puede escribir su código en este editor
if ( global.jugabilidad == false and global.tarea_completada == false ){
	escala = 1.1

	#region Aumenta el  valor de  la barra
		if (linea_index!=noone and instance_exists(obj_contr_tarea15)){
			y = mouse_y
			y = median( valor_y_min, y, valor_y_max );  
			obj_contr_tarea15.posY_linea[linea_index] = y
		}
	#endregion
}
