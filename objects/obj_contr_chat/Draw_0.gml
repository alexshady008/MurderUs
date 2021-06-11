/// @description Dibuja la interfaz
// Puede escribir su código en este editor

#region Propiedades de la camara
	var cam_x = camera_get_view_x(view_camera[0]) 
	var cam_y = camera_get_view_y(view_camera[0]) 
	var cam_ancho = camera_get_view_width(view_camera[0])
	var cam_alto = camera_get_view_height(view_camera[0])
#endregion

#region Dibuja la pantalla negra
	draw_set_color(c_black)
	draw_set_alpha(0.65)
	draw_rectangle(cam_x,cam_y,cam_x+cam_ancho,cam_y+cam_alto,0)
	draw_set_alpha(1)
#endregion

//draw_text_color(cam_x+10, cam_y+20, global.A, c_white, c_white, c_white, c_white, 1)


draw_sprite(spr_popup_chat,0,x,y)
draw_set_color(c_white)
//draw_rectangle(x-400,y-140,x+400,y+140,0)


#region Dibuja el titulo del pop up
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posY = y-310
	switch(os_get_language()) {
		case "es": draw_text_outline("CHAT - MENSAJES",x,posY,c_black,1,1,c_white) break;
		case "pt": draw_text_outline("CHAT - MENSAGENS",x,posY,c_black,1,1,c_white) break;
		case "it": draw_text_outline("CHAT - MESSAGGI",x,posY,c_black,1,1,c_white) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ЧАТ - СООБЩЕНИЯ",x,posY,c_black,1,1,c_white) break;
		default: draw_text_outline("CHAT - MESSAGE",x,posY,c_black,1,1,c_white) break;
	}
#endregion


#region Contr la surface
	draw_set_alpha(1)
	// vemos si la superficie existe, si no la volvemos a crear
	if (!surface_exists(surface)) surface = surface_create(slider_ancho,slider_alto); //y=374 x=875
	// iniciamos la edicion del surface
	surface_set_target(surface)
	draw_clear_alpha(0,0);
	gpu_set_blendmode(bm_subtract)
	draw_rectangle_color(0,0,slider_ancho,slider_alto,c_white,c_white,c_white,c_white,0);  //450
	gpu_set_blendmode(bm_normal)
#endregion


#region Dibuja los mensajes
	draw_set_halign(fa_left)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_normal_ru)
	var cant_mensajes = ds_list_size(global.mensajes_lista)
	
	// COntr la pos Y
	var aumentoY = 100
	var posY_limite_arriba = 20
	var posY_limite_abajo = 400  //400
	var posY_inicial = posY_limite_abajo + slider
	if (posY_inicial>=posY_limite_arriba /*and posY_inicial<=posY_limite_abajo*/){
		var posY = posY_inicial
		contr_slider = 0
	}	
	else if (posY_inicial<posY_limite_arriba) {
		var posY = posY_limite_arriba
		contr_slider = 1
	}	
	/*else if (posY_inicial>posY_limite_abajo) {
		var posY = posY_limite_abajo
		contr_slider = 2
	}	*/
	
	//Contr la pos X
	var posX = 40
	
	// Muestra los msjs
	for(i=0 ; i<cant_mensajes ; i++)
	{	
		var ultimo_msj = cant_mensajes-1
		var num_msj = i
		var mensaje_mapa = ds_list_find_value(global.mensajes_lista,i)
		scr_dibuja_mensaje(mensaje_mapa, posX, posY)
		//posY-=aumentoY
		
		if (num_msj != ultimo_msj) {
			posY-=aumentoY
		}
		else {
			if (posY>posY_limite_abajo) {
				contr_slider = 2
				posY = posY_limite_abajo
			}
		}
	}
#endregion


#region Dibuja la superficie
	gpu_set_blendmode(bm_normal)
	surface_reset_target()
	// DIbujamos la surface
	draw_surface_ext( surface, slider_posX1,slider_posY1, 1,1,0,c_white,1 );  //y-220
	draw_set_alpha(1)
#endregion
