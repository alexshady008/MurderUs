/// @description Contr el movimiento del jugador
// Puede escribir su código en este editor


if (global.jugabilidad)
{
	
#region Mueve al jugador
	for(i=0;i<5;i+=1)
	{
		
		#region se presiona el boton
			if(device_mouse_check_button(i,mb_left)) 
			{  
				var cam_x = camera_get_view_x(view_camera[0]) 
				var cam_y = camera_get_view_y(view_camera[0]) 
				var cam_ancho = camera_get_view_width(view_camera[0])
				var cam_alto = camera_get_view_height(view_camera[0])
				
				if (instance_exists(obj_contr_mostrar_minimapa)) cam_y=cam_y+490
	
				if(device_mouse_x(i)>=(cam_x) and device_mouse_x(i)<=(cam_x+(cam_ancho/2)) 
				and device_mouse_y(i)>=(cam_y) and device_mouse_y(i)<=(cam_y+cam_alto))
				{
					image_alpha = 0.35
				    var dist = point_distance(x,y,device_mouse_x(i),device_mouse_y(i))
				    if dist >= 5 {
					    image_index = 1
					    global.direccion = floor(point_direction(x,y,device_mouse_x(i),device_mouse_y(i)))
					    image_angle = global.direccion
				    }
				    else {
						image_index = 0
				    }
      
				} 
			}
		#endregion
		
		#region Se suelta el boton
			if(device_mouse_check_button_released(i,mb_left)) 
			{
				image_alpha = 0.5
				image_index = 0
				global.direccion = noone
			}
		#endregion
	}

#endregion

}

else {
	image_alpha = 0.5
	image_index = 0
	global.direccion = noone
}
