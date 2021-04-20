/// @description  lo dibuja

#region controla su posicion
	var cam_x = camera_get_view_x(view_camera[0]) 
	var cam_y = camera_get_view_y(view_camera[0]) 
	var cam_alto = camera_get_view_height(view_camera[0])
	x = (cam_x+((x_start*global.max_zoom)/global.zoom))
	y = ((cam_y+cam_alto)-((y_start*global.max_zoom)/global.zoom))
 #endregion
 
escala=3/global.zoom
image_xscale = escala
image_yscale = escala
var escala_icono_tarea = 2.25/global.zoom

//draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)

if (tipo_obj!=noone)
{
		
#region contr cuando NO se elige una tarea
if (global.categoria_obj!=categoria_tarea)
{
	if !(global.destruir)
	{
		if (global.sel_objeto == tipo_obj)
		{ draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha) }
		else 
		{ draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_gray,image_alpha) }
	}
	else 
	{ 
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_gray,image_alpha) 
	}
}
#endregion

#region contr cuando se elige una tarea
else {
	var obj_tarea = tipo_obj-1
	if (obj_tarea<global.max_tareas_crearse){
		// Si la tarea no fue creada
		if (global.tareas_creadas[obj_tarea] == false){
			if (global.sel_objeto == tipo_obj)
			{ draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha) }
			else 
			{ draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_gray,image_alpha) }
		}
		// SI la tarea fue creada
		else {
			draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha) 
			draw_sprite_ext(spr_icono_votacion_realizada,0,x,y,escala_icono_tarea,escala_icono_tarea,0,c_white,1)
		}
	}
	else {
		draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_gray,image_alpha)
	}
}
#endregion

}