/// @description Dibuja la interfaz de los sabotajes
// Puede escribir su código en este editor

#region Propiedades de la camara
	cam_x = camera_get_view_x(view_camera[0]) 
	cam_y = camera_get_view_y(view_camera[0]) 
	cam_ancho = camera_get_view_width(view_camera[0])
	cam_alto = camera_get_view_height(view_camera[0])
#endregion


draw_set_alpha(global.alfaFondo)
draw_rectangle_color(cam_x,cam_y,cam_x+cam_ancho,cam_y+cam_alto,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)


//if (global.saboteando){
if (global.jugador_tipo=="IMPOSTOR" ){	
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posX = cam_x+640
	var posY = cam_y+50
		
	switch(os_get_language()) {
		case "es": draw_text_outline("SABOTEAR TAREAS",posX,posY,c_black,1,1,c_white) break;
		case "pt": draw_text_outline("TAREFAS DE SABOTAGEM",posX,posY,c_black,1,1,c_white) break;
		case "it": draw_text_outline("COMPITI SABOTAGGIO",posX,posY,c_black,1,1,c_white) break;
		case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ЗАДАЧИ САБОТАЖА",posX,posY,c_black,1,1,c_white) break;
		default: draw_text_outline("TASKS SABOTAGE",posX,posY,c_black,1,1,c_white) break;
	}
}


var ver_entidades = global.ver_minimapa_jugadores
if (room==rm_nivel1 or room==rm_nivel1_editor) scr_dibujar_mapa(175,75,ver_entidades,5)
else if (room==rm_nivel2 or room==rm_nivel2_editor) scr_dibujar_mapa(150,75,ver_entidades,5)
else if (room==rm_nivel3 or room==rm_nivel3_editor) scr_dibujar_mapa(250,0,ver_entidades,7)
//else if (room==rm_nivel1_editor) scr_dibujar_mapa(cam_x+250,cam_y+75,ver_entidades,5)
