/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (camaras_creadas){
	for (i=0 ; i<cant_camaras ; i++){
		var cam_x = camera_get_view_x(global.camara[i]) 
		var cam_y = camera_get_view_y(global.camara[i]) 
		draw_sprite(spr_interfaz_camara, 0, cam_x, cam_y)
	}
}