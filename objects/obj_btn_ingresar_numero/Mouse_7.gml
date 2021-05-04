/// @description Va a la pantalla previa a jugar
if ( global.jugabilidad == false and global.tarea_completada == false ){
	escala=1
	depth = depth_inicial
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	#region Elige un valor
	if (valor != noone){
		if (obj_contr_tarea3.ingresar==true){
			var valor_anterior = obj_contr_tarea3.valor_jugador
			var ultima_pos = string_length(valor_anterior)+1
			var valor_a_insertar = string(valor)
			obj_contr_tarea3.valor_jugador = string_insert(valor_a_insertar,valor_anterior,ultima_pos)
			
			with(obj_contr_tarea3){
				cant_valor++
				if (cant_valor==max_cant_valor){
					ingresar=false
					alarm[1] = 50  //Comprueba si el avlor es el correcto
				}
			}
		}
	}	
	#endregion
}
