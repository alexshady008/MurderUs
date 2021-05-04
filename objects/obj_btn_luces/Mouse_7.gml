/// @description Va a la pantalla previa a jugar
if (global.jugabilidad==true) and (global.menuBloq==false)
and (global.estadoJuego=="jugando" or global.estadoJuego==noone)
{
	escala=1
	
	#region sonido
		if (global.luz == false)
		{ 
			global.luz = true
			ini_open("comandos.ini")
			ini_write_real("jugadorDatos","luz",global.luz)
			ini_close()
			//Enciende la luz
			if instance_exists(obj_luz) instance_destroy(obj_luz)
		}
		else {
			global.luz = false
			ini_open("comandos.ini")
			ini_write_real("jugadorDatos","luz",global.luz)
			ini_close()
			// Apaga  la luz
			if (!instance_exists(obj_luz) and global.estadoJuego!=noone) instance_create_layer(0,0,"ContrLuz",obj_luz)
		}
	#endregion
}


