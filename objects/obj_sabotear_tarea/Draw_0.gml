/// @description Lo dibuja
// Puede escribir su código en este editor
#region Propiedades de la camara
	cam_x = camera_get_view_x(view_camera[0]) 
	cam_y = camera_get_view_y(view_camera[0]) 
	x = cam_x+pos_x
	y = cam_y+pos_y
#endregion


draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_white,1)


draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_normal)
var posX = x
var posY = y
if (num_tarea_sabotear!=noone){	
switch(os_get_language()) {
	case "es": draw_text_outline2("SABOTEAR TAREA "+string(num_tarea_sabotear+1),posX,posY,c_black,1,1,c_white) break;
	case "pt": draw_text_outline2("TAREFA "+string(num_tarea_sabotear+1)+" SABOTAGEM",posX,posY,c_black,1,1,c_white) break;
	case "it": draw_text_outline2("COMPITO "+string(num_tarea_sabotear+1)+" SABOTAGGIO",posX,posY,c_black,1,1,c_white) break;
	case "ru": draw_set_font(fnt_grande_ru) draw_text_outline2("ЗАДАНИЕ "+string(num_tarea_sabotear+1)+" САБОТАЖ",posX,posY,c_black,1,1,c_white) break;
	default: draw_text_outline2("TASK "+string(num_tarea_sabotear+1)+" SABOTAGE ",posX,posY,c_black,1,1,c_white) break;
}
}


if !(global.sabotear) draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_black,0.5)