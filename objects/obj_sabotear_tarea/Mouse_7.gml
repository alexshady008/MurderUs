/// @description Sabotea la tarea
// Puede escribir su código en este editor

if (global.sabotear==true and num_tarea_sabotear!=noone)
{
	escala = 1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }
	
	scr_sabotear_tarea(num_tarea_sabotear)
	global.sabotear = false
	if instance_exists(obj_contr_sabotajes) instance_destroy(obj_contr_sabotajes)
}