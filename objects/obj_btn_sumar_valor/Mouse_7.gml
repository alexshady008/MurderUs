/// @description Va a la pantalla previa a jugar
if ( global.jugabilidad == false and global.tarea_completada == false ){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	#region Aumenta el valor de las veces apretado
	//if !(completado)
	//{
		var valor_elegido = obj_contr_tarea13.valor_elegido[index]
		var valor_maximo = obj_contr_tarea13.max_valores_elegidos
		
		if (obj_contr_tarea13.valor[index]<valor_maximo)  obj_contr_tarea13.valor[index]+=1
		
		if (obj_contr_tarea13.valor[index]==valor_elegido and completado==false) {
			completado = true
			obj_contr_tarea13.valores_completados++
		}	
	//}	
	#endregion
}
