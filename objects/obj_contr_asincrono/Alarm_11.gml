/// @description Puntua el juego
// Puede escribir su código en este editor

//url_open("https://play.google.com/store/apps/details?id=com.cheshirex.fallrun")
scr_calificar()

if !(global.regaloSkins) {
	global.skinsDesbloqueados = global.maxSkins
	global.regaloSkins = true
	ini_open("comandos.ini")
		ini_write_real("jugadorDatos","skinsDesbloqueados",global.skinsDesbloqueados)
		ini_write_real("jugadorDatos","regaloSkins",global.regaloSkins)
	ini_close()
}