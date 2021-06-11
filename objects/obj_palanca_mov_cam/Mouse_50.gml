/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

#region Variables
var mov = 45/global.zoom  //15
var camara_id = view_camera[0]
var cam_x = camera_get_view_x(camara_id) 
var cam_y = camera_get_view_y(camara_id) 
var cam_ancho = camera_get_view_width(camara_id)
var cam_alto = camera_get_view_height(camara_id)
#endregion


if  (global.visible_opciones)
{

#region Activa el boton para comenzar a mover la camara
if (global.jugabilidad == true and moverPantalla == false ) {
	if(mouse_x>x-(360/global.zoom) and mouse_x<x+(360/global.zoom)) and (mouse_y>y-(288/global.zoom) and mouse_y<y+(288/global.zoom))
	{
		moverPantalla = true
		global.jugabilidad = false
	}
}
#endregion


#region Mueve la camara
if (global.jugabilidad == false and moverPantalla == true ) {

	var dist = point_distance(x,y,mouse_x,mouse_y)
	if dist >= 15/global.zoom {
   
		image_index = 1
		var dir = floor(point_direction(x,y,mouse_x,mouse_y))
   
		// Mueve hacia arriba
		if dir > 45 and dir <= 135 {
			image_angle = 90
			if (cam_y > (0+mov)) 
			{ camera_set_view_pos(camara_id,cam_x,cam_y-mov)  }
		}
		// Mueve hacia la izq
		if dir > 135 and dir <= 225 {
			image_angle = 180
			if (cam_x > (0+mov)) 
			{ camera_set_view_pos(camara_id,cam_x-mov,cam_y)  }
		}
		// Mueve hacia abajo
		if dir > 225 and dir <= 315 {
			image_angle = 270
			//if (cam_y < ((cam_y+cam_alto)-mov)) 
			if ((cam_y+cam_alto) < (room_height-mov)) 
			{ camera_set_view_pos(camara_id,cam_x,cam_y+mov)  }
		}
		// Mueve hacia la der
		if (dir > 315 and dir <= 360) or (dir >= 0 and dir <= 45) {
			image_angle = 0
			//if (cam_x < ((cam_x+cam_ancho)-mov)) 
			if ((cam_x+cam_ancho) < (room_width-mov)) 
			{ camera_set_view_pos(camara_id,cam_x+mov,cam_y)  }
		}
    
   
	}
	else {
		image_index = 0
	}

}
#endregion

}