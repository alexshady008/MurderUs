/// @description Reinicia variables
// Puede escribir su código en este editor
global.menuBloq = false
global.historia = false

if !(global.tutorial_historia_juego){
	global.tutorial_historia_juego = true
	ini_open("comandos.ini")
	ini_write_real("jugadorDatos","tutorial_historia_juego",global.tutorial_historia_juego)
	ini_close()
}

if (global.room_historia_finalizada != noone) room_goto(global.room_historia_finalizada)
else room_goto(rm_menu)