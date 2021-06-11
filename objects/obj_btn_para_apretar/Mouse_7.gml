/// @description Va a la pantalla previa a jugar
if ( global.jugabilidad == false and global.tarea_completada == false ){
	image_index = 0
	image_speed = 0
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	#region Aumenta el valor de las veces apretado
	var presionar_boton = obj_contr_tarea5.presionar_boton
	
	if (presionar_boton){
		obj_contr_tarea5.presionar_boton=false
		obj_contr_tarea5.veces_apretado++
		
		if (global.step_delta>=1) obj_contr_tarea5.alarm[1] = irandom_range(50,100)/global.step_delta
		else obj_contr_tarea5.alarm[1] = irandom_range(50,100)
	}
			
	#endregion
}
