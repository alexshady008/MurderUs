/// @description Contr cuando se vota a un jugador
// Puede escribir su código en este editor

if (global.chat==2) {
	escala = 1
	
	/// sonido
	if (global.musica) audio_play_sound(snd_boton,100,false) 
						
	// Si se elige al jugador A, se elimina
	if (global.opciones_msjs!=false)
	{
		global.opciones_msjs = false
		global.etapa_msjs = 1
		global.max_etapa_mjes = 1
		depth = depth_inicial
		x = posX_inicial
		y = posY_inicial
		global.mensaje = ""
		global.A = "(A)"
		global.B = "(B)"
		global.X = "(X)"
		if instance_exists(obj_mostrar_jugadores_msjes) instance_destroy(obj_mostrar_jugadores_msjes)
		if instance_exists(obj_mostrar_lugares_msjes) instance_destroy(obj_mostrar_lugares_msjes)
	}
	else {
		if instance_exists(obj_contr_msjs_automaticos) instance_destroy(obj_contr_msjs_automaticos)
	}

}	