/// @description Se presiona
// Puede escribir su código en este editor
if ( global.jugabilidad == false and global.tarea_completada == false ){
	image_xscale = 0.6
	image_yscale = 0.6

	#region Aumenta el  valor de  la barra
		if (barra_index!=noone and instance_exists(obj_contr_tarea14)){
			if (obj_contr_tarea14.valor_barra[barra_index]>0) obj_contr_tarea14.valor_barra[barra_index]-=0.5
		}
	#endregion
}
