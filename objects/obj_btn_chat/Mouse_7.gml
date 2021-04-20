/// @description  vuelve al menu

image_xscale = 1
image_yscale = 1

if ((global.chat==false or (global.chat==2 and global.etapa_msjs==1)) 
	and global.cambiarVestimenta==false)
	{
		/// sonido del boton
		if global.musica == true
		{ audio_play_sound(snd_boton,100,false) }
	
		// Contr la var global del chat
		global.chat = 1
	
		// Si el chat no fue abierto, lo crea
		if !(instance_exists(obj_contr_chat)){
			var contr_cam_x = camera_get_view_x(view_camera[0]) 
			var contr_cam_y = camera_get_view_y(view_camera[0]) 
			var posX = contr_cam_x + 640
			var posY = contr_cam_y + 360
			instance_create_depth(posX,posY,depth-100,obj_contr_chat)	
			obj_contr_chat.alarm[0]=1
		}
		// Si el chat ya fue abierto, cambia su estado
		else {
			obj_contr_chat.alarm[0]=1
		}
	
		// Contr la notificacion
		if (notificacion) notificacion=false
	}