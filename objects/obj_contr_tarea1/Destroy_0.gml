/// @description Termina la tarea
// Puede escribir su código en este editor

if (global.estadoJuego=="jugando") global.jugabilidad = true

#region Destruye los botones
	if instance_exists(btn_eliminar_tarea) instance_destroy(btn_eliminar_tarea)
	if instance_exists(btn_aumentar_barra1) instance_destroy(btn_aumentar_barra1)
	if instance_exists(btn_aumentar_barra2) instance_destroy(btn_aumentar_barra2)
	if instance_exists(btn_aumentar_barra3) instance_destroy(btn_aumentar_barra3)
	if instance_exists(btn_aumentar_barra4) instance_destroy(btn_aumentar_barra4)
#endregion


// Si se completa la tarea, se le suma a la cant de tareas completadas del jugador
if (global.tarea_completada)
{
	if (num_tarea != noone) {
		if (global.tareas_completadas[num_tarea]==false){
			global.tareas_completadas[num_tarea] = true
			global.cant_tareas_completadas += 1 
			//Comprueba si arreglo todas las tareas
			if (global.cant_tareas_completadas==global.max_tareas) scr_tareas_completadas()
		}
	}
	
	// Si la tarea fue saboteada, deja de estar saboteada
	if (saboteada==true and global.tarea_saboteada==num_tarea) scr_arreglar_tarea()
	
}



/// Desactiva sonido
if (global.musica)
{ if (audio_is_playing(sonido)) audio_stop_sound(sonido) }