// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_variables_estadisticas_ranking(){
	
	#region Puntos que se suman depende la ocasión
		global.puntos_al_ganar_partida = 10
		global.puntos_al_asesinar = 5
		global.puntos_al_esconder_cadaver = 5
		global.puntos_al_completar_todas_tareas = 15
		global.puntos_al_descubrir_pistas = 5
		global.puntos_al_infectar = 1
	#endregion	
	
	#region Variables del modo online 
		global.puntuacion_online = ini_read_real("jugadorDatos", "puntuacion_online", 0); //Puntuación total del modo online
		global.partidas_online_ganadas = ini_read_real("jugadorDatos", "partidas_online_ganadas", 0); //Cantidad de partidas ganadas en el modo online
		global.partidas_online_jugadas = ini_read_real("jugadorDatos", "partidas_online_jugadas", 0); //Cantidad de partidas jugadas en total en el modo online
		global.asesinatos_online = ini_read_real("jugadorDatos", "asesinatos_online", 0); //cantidad de asesinatos realizados en el modo online (sólo aplica para el rol del asesino)
		global.cadaveres_escondidos_online = ini_read_real("jugadorDatos", "cadaveres_escondidos_online", 0); //cantidad de cadaveres escondidos en el modo online (sólo aplica para el rol del complice)
		global.pistas_descubiertas_online = ini_read_real("jugadorDatos", "pistas_descubiertas_online", 0); //cantidad de pistas descubiertas en el modo online (sólo aplica para el rol del detective)
		global.cuerpos_reportados_online = ini_read_real("jugadorDatos", "cuerpos_reportados_online", 0); //cantidad de cuerpos reportados en el modo online 
	#endregion
	
	#region Variables del modo online 
		global.puntuacion_offline = ini_read_real("jugadorDatos", "puntuacion_offline", 0); //Puntuación total del modo offline
		global.partidas_offline_jugadas = ini_read_real("jugadorDatos", "partidas_offline_jugadas", 0); //Cantidad de partidas jugadas en total en el modo offline
		global.partidas_offline_ganadas = ini_read_real("jugadorDatos", "partidas_offline_ganadas", 0); // cantidad de partidas ganadas en el modo offline
		global.tripulantes_infectados_offline = ini_read_real("jugadorDatos", "tripulantes_infectados_offline", 0); // cantidad de tripulantes infectados en el modo offline (sólo aplica para el rol del zombie)
	#endregion
	
	global.tareas_jugador_completadas = ini_read_real("jugadorDatos", "tareas_jugador_completadas", 0); //cantidad de tareas totales completadas en el modo online y offline
	
}