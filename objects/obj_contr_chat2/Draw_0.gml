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


#region Dibuja los mensajes
	draw_set_halign(fa_left)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_normal_ru)
	var cant_mensajes = ds_list_size(global.mensajes_lista)
	var mensajes_por_mostrarse = cant_mensajes_mostrados
	var posY = y-210
	var posX = x-400
	var colorJug = c_white
	for(i=1 ; i<=cant_mensajes ; i++){
		if (mensajes_por_mostrarse>0){
			if (cant_mensajes<=cant_mensajes_mostrados) var mensaje_mapa = ds_list_find_value(global.mensajes_lista,(cant_mensajes-i))
			else var mensaje_mapa = ds_list_find_value(global.mensajes_lista,(cant_mensajes_mostrados-i))
			//var mensaje_mapa = ds_list_find_value(global.mensajes_lista,i)
			var skin = real(ds_map_find_value(mensaje_mapa,"skin"))
			var tipo_color = real(ds_map_find_value(mensaje_mapa,"color"))
			var accesorio = real(ds_map_find_value(mensaje_mapa,"accesorio"))
			var sombrero = real(ds_map_find_value(mensaje_mapa,"sombrero"))
			var nombre = ds_map_find_value(mensaje_mapa,"nombre")
			var mensaje = ds_map_find_value(mensaje_mapa,"mensaje")
			//show_debug_message(mensaje)
			//Contr color
			if (skin==1) colorJug = scr_crear_color(tipo_color)
			else colorJug = c_white
			
			scr_dibuja_icono_jugador(skin,posX,posY+15,1, colorJug)
			scr_dibuja_accesorio_jug(accesorio,posX,(posY+15)+30,1,1.5,1.5)
			scr_dibuja_sombrero_jug(sombrero,posX,(posY+15)+30,1,1.5,1.5)
			draw_text_transformed_color(posX+50,posY,nombre,1,1,0,color2,color2,color2,color2,1)
			draw_text_ext_transformed_color(posX+50,posY+30,mensaje,30,750,1,1,0,color3,color3,color3,color3,1)
			
			posY+=100
			mensajes_por_mostrarse--
		}
	}
#endregion