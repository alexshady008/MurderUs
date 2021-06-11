/// @description Contr si se completa la tarea
// Puede escribir su código en este editor
if !(global.tarea_completada)
{
	#region Comprueba si se completo la tarea
	if (cant_veces_mezclado==max_veces_mesclar) scr_contr_tarea_completada()
	#endregion
}


// Destruye la tarea
if (instance_exists(obj_contr_animacion_muerte) or global.estadoJuego!="jugando") instance_destroy()