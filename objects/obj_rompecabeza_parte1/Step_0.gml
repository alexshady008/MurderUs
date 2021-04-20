/// @description Controla cuando se mueve al ser presionado
// Puede escribir su código en este editor

if (presionado)
{
	x = mouse_x
	y = mouse_y
	
	if (bloque) {
		var inst_col = instance_position(x,y,obj_rompecabeza_parte1)
	
		if (inst_col!=noone and inst_col.bloque=false) {
			/// sonido
			if global.musica == true
			{ audio_play_sound(snd_swosh,100,false) }
	
			obj_contr_tarea9.bloques_armados++
			inst_col.completado=true
			instance_destroy()
		}
	}
}
