/// @description Variables
// Puede escribir su código en este editor

global.sala_codigo = ""
randomize()
global.idLocal = irandom_range(1,999999999)
global.cant_max_letras_codigo = 6
entradaTeclado = ""
cant_salas_publicas = 0

color = c_white
borde = c_black
color2 = make_colour_rgb(12,107,12) 


scr_solicitar_salas_publicas()
alarm[0] = room_speed   


audio_stop_all()


#region Muestra el pop up de activar o desactivar las luces
	if (global.contr_luz_popup==false) {
		scr_popup_aviso_luces()
		global.contr_luz_popup = true
		ini_open("comandos.ini")
		ini_write_real("jugadorDatos","luz_popup",global.contr_luz_popup)
		ini_close()
	}
#endregion