/// @description Ganan la raza 2 por eliminar al jugador tripulante
// Puede escribir su código en este editor
// Sonido
if (global.musica==true) {
	audio_stop_all()
	audio_play_sound(snd_asesinos_ganadores,100,false)
}
						
global.estadoJuego = "juego_terminado_impostores_ganadores"
mensaje_juego_finalizado = "tripulantes_eliminados"
//mostrarPantallaFinal = true
alarm[4] = tiempo_pasar_escena*1.5
scr_activar_transicion_final()