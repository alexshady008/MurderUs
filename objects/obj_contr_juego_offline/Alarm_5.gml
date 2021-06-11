/// @description Comienza el juego
// Puede escribir su código en este editor

audio_stop_all()
global.jugabilidad = true
global.estadoJuego = "jugando"
alarm[2] = room_speed

#region COntrola las partidas offline jugadas 
	global.partidas_offline_jugadas += 1
	scr_guardar_datos("partidas_offline_jugadas", global.partidas_offline_jugadas)
#endregion