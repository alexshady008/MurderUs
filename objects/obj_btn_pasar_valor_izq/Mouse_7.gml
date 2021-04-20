/// @description Va a la pantalla previa a jugar
if ( global.jugabilidad == false and global.tarea_completada == false ){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	#region Aumenta el valor de las veces apretado
		var dibujo_actual = obj_contr_tarea8.icono_actual
		var dibujo_maximo = obj_contr_tarea8.max_iconos_imagenes
		
		if (dibujo_actual>0)  obj_contr_tarea8.icono_actual -= 1
		
		//if (dibujo_actual<=0)  obj_contr_tarea8.icono_actual = dibujo_maximo
		//else if (dibujo_actual>0)  obj_contr_tarea8.icono_actual -= 1
	#endregion
}
