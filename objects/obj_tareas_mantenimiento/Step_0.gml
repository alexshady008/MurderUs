/// @description Contr si se completa la tarea
// Puede escribir su código en este editor
if !(global.tarea_completada)
{
	#region Comprueba si se completo la tarea
	if (objetos_mantenidos==total_objeto_mantener) scr_contr_tarea_completada()
	#endregion
}


// Destruye la tarea
if (instance_exists(obj_contr_animacion_muerte) or global.estadoJuego!="jugando") instance_destroy()