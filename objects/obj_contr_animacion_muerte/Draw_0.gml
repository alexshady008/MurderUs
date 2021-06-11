/// @description Dibuja la animacion
// Puede escribir su código en este editor
#region Propiedades de la camara
	cam_x = camera_get_view_x(view_camera[0]) 
	cam_y = camera_get_view_y(view_camera[0]) 
	cam_ancho = camera_get_view_width(view_camera[0])
	cam_alto = camera_get_view_height(view_camera[0])
#endregion

/*
draw_set_alpha(1)
draw_rectangle_color(cam_x,cam_y,cam_x+cam_ancho,cam_y+cam_alto,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)*/

var escala = 1.5

#region Dibuja el fondo y la mancha
	var posX_fondo = cam_x+640
	var posY_fondo = cam_y+360
	//if (asesinato_parte==1){
	if (frame<max_frame){
		draw_sprite_ext(spr_asesinato1_fondo, fondo_frame, posX_fondo, posY_fondo, 1, 1, 0, c_white, 1)
	}
	else {
		global.sombraAlfa = 0.9
		global.luzRadio_escala = 1.3
		draw_sprite_ext(spr_asesinato2_fondo, fondo_frame, posX_fondo, posY_fondo, 1, 1, 0, c_white, 1)
		var posX_mancha = (posX_fondo+50)+(70*escala)  //90
		var posY_mancha = (posY_fondo+50)+(30*escala)  //30
		draw_sprite_ext(spr_asesinato2_mancha, 0, posX_mancha, posY_mancha, 1, 1, 0, c_white, 1)
	}
#endregion


#region Dibuja al asesinado
	if (skin_asesinado!=noone){
		var posX = cam_x+690
		var posY = cam_y+360
		if (frame<max_frame){
		scr_dibuja_jugador_parado(skin_asesinado,posX,posY,1,color_asesinado)
		}
		else {
			scr_dibuja_jugador_reportado(skin_asesinado,posX,posY+50, color_asesinado)
		}
	}
#endregion


#region Dibuja al asesino
	if (skin_asesino!=noone){
		if (skin_asesino==1 or (skin_asesino>=8 and skin_asesino<=19)) var posX = cam_x+590
		else var posX = cam_x+490
		var posY = cam_y+360
		scr_dibuja_jugador_asesinando(skin_asesino,posX,posY,frame, color_asesino,tipo_animacion_asesino )
	}
#endregion

