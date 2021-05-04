/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
/*cam_x = camera_get_view_x(view_camera[0]) 
cam_y = camera_get_view_y(view_camera[0]) 
cam_ancho = camera_get_view_width(view_camera[0])
cam_alto = camera_get_view_height(view_camera[0])
	
	
if (efecto==2){
	//Posiciones
	var posX1 = cam_x+111
	var posX2 = cam_x+1150
	var posY = cam_y+136
	
	// humo
	var colorHumo = c_silver 
	effect_create_above(ef_smokeup, posX1 ,posY , irandom_range(1,3), colorHumo)
	effect_create_above (ef_smokeup, posX2 , posY, irandom_range(1,3), colorHumo)
	
	// CHispa
	var colorChispa = c_white 
	effect_create_above(ef_firework,posX1 ,posY , irandom_range(1,3), colorChispa)
	effect_create_above (ef_firework,posX2 , posY, irandom_range(1,3), colorChispa)
	
}