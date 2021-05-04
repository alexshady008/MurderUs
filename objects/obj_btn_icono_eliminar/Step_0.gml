/// @description Controla cuando se mueve al ser presionado
// Puede escribir su código en este editor

if (presionado)
{
	x = mouse_x
	y = mouse_y
	
	var inst_col = instance_place(x,y,obj_btn_eliminar_iconos)
	
	if (inst_col!=noone) {
		/// sonido
		if global.musica == true
		{ audio_play_sound(snd_swosh,100,false) }
	
		obj_contr_tarea7.iconos_eliminados++
		instance_destroy()
	}
}
