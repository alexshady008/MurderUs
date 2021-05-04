/// @description  Envia el msj

image_xscale = 1
image_yscale = 1

if (global.chat == 1 and global.escribiendo==false 
	and global.mensaje!="" and global.slider_presionado==false)
	{
		/// sonido del boton
		if global.musica == true
		{ audio_play_sound(snd_boton,100,false) }
	
		scr_enviar_mensaje()
		global.mensaje = ""
		//obj_contr_chat.mensaje_mostrado = ""
	}