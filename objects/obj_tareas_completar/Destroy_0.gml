/// @description Termina la tarea
// Puede escribir su código en este editor

if (global.estadoJuego=="jugando") global.jugabilidad = true

#region Destruye los botones
	if instance_exists(btn_eliminar_tarea) instance_destroy(btn_eliminar_tarea)
	//if instance_exists(obj_parte1_rompecabeza) instance_destroy(obj_parte1_rompecabeza)
#endregion

/// Desactiva sonido
if (global.musica==true and sonido!=noone)
{ if (audio_is_playing(sonido)) audio_stop_sound(sonido) }

/*
#region Completa la tarea
	if (global.tarea_completada) scr_contr_tarea_completada()
#endregion