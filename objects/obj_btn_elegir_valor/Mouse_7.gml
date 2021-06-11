/// @description Va a la pantalla previa a jugar
if ( global.jugabilidad == false and global.tarea_completada == false ){
	escala=1
	depth = depth_inicial
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	#region Elige un valor
	if (obj_contr_tarea11.mostrarValor==false and btn_seleccionado==false)
	{
		if (obj_contr_tarea11.valorElegido==valor){
			btn_seleccionado = true
			 obj_contr_tarea11.valores_correctos_seleccionados++
		}
		else {
			with(obj_contr_tarea11){
				valores_correctos_seleccionados = 0
				valor_incorrecto = true
				mostrarValor = true
				if (global.step_delta>=1) alarm[1] = 100/global.step_delta
				else alarm[1] = 100
			}
		}
	}	
	#endregion
}
