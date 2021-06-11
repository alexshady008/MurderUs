/// @description Inserte aquí la descripción
// Puede escribir su código en este editor



#region Propiedades de la camara
	cam_x = camera_get_view_x(view_camera[0]) 
	cam_y = camera_get_view_y(view_camera[0]) 
	cam_ancho = camera_get_view_width(view_camera[0])
	cam_alto = camera_get_view_height(view_camera[0])
#endregion


draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_chica)
var posX1 = cam_x+100
var posX2 = cam_x+300
var posY = cam_y+100
var n = 30

if (global.mostrarDatosJug) {
	// Datos Online
	draw_text_color(posX1,posY,"DATOS ONLINE",c_white,c_white,c_white,c_white,1)
	draw_text_color(posX1,posY+(n*1),"Puntuacion: "+string(global.puntuacion_online),c_white,c_white,c_white,c_white,1)
	draw_text_color(posX1,posY+(n*2),"Part Jugadas: "+string(global.partidas_online_jugadas),c_white,c_white,c_white,c_white,1)
	draw_text_color(posX1,posY+(n*3),"Part Ganadas: "+string(global.partidas_online_ganadas),c_white,c_white,c_white,c_white,1)
	draw_text_color(posX1,posY+(n*4),"Asesinatos: "+string(global.asesinatos_online),c_white,c_white,c_white,c_white,1)
	draw_text_color(posX1,posY+(n*5),"Cuerpos report: "+string(global.cuerpos_reportados_online),c_white,c_white,c_white,c_white,1)
	draw_text_color(posX1,posY+(n*6),"Cuerpos ocultos: "+string(global.cadaveres_escondidos_online),c_white,c_white,c_white,c_white,1)
	draw_text_color(posX1,posY+(n*7),"Pistas encontradas: "+string(global.pistas_descubiertas_online),c_white,c_white,c_white,c_white,1)
	draw_text_color(posX1,posY+(n*8),"Tareas compl: "+string(global.tareas_jugador_completadas),c_white,c_white,c_white,c_white,1)
	
	draw_text_color(posX2,posY,"DATOS OFFLINE",c_white,c_white,c_white,c_white,1)
	draw_text_color(posX2,posY+(n*1),"Puntuacion: "+string(global.puntuacion_offline),c_white,c_white,c_white,c_white,1)
	draw_text_color(posX2,posY+(n*2),"Part Jugadas: "+string(global.partidas_offline_jugadas),c_white,c_white,c_white,c_white,1)
	draw_text_color(posX2,posY+(n*3),"Part Ganadas: "+string(global.partidas_offline_ganadas),c_white,c_white,c_white,c_white,1)
	draw_text_color(posX2,posY+(n*4),"Infectados: "+string(global.tripulantes_infectados_offline),c_white,c_white,c_white,c_white,1)
	draw_text_color(posX2,posY+(n*5),"Tareas compl: "+string(global.tareas_jugador_completadas),c_white,c_white,c_white,c_white,1)
}	
//draw_text_color(cam_x+200,cam_y+100,string(room_speed),c_white,c_white,c_white,c_white,1)
