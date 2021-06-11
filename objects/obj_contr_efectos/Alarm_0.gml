/// @description Contr el efecto a crearse
// Puede escribir su código en este editor
var cam_x = camera_get_view_x(view_camera[0]) 
var cam_y = camera_get_view_y(view_camera[0]) 
var cam_ancho = camera_get_view_width(view_camera[0])
var cam_alto = camera_get_view_height(view_camera[0])


// Efecto del papel picado
if (efecto==1){
	
	var cantidad = irandom_range(5,10)
	repeat(cantidad){
	var papel = instance_create_layer(random_range(cam_x,cam_x+cam_ancho), cam_y, "Transicion", obj_papel_picado)
	papel.limiteY = cam_y+cam_alto
	}
	
	var tiempo_crearse = irandom_range(5,10)
	var tiempo = tiempo_crearse/global.step_delta
	if (tiempo>=1) alarm[0] = tiempo  
	else alarm[0] = 1 
}

/*
//Efecto de las chispas
else if (efecto==2){
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
	
	var tiempo_crearse = irandom_range(10,20)
	var tiempo = tiempo_crearse/global.step_delta
	if (tiempo>=1) alarm[0] = tiempo  
	else alarm[0] = 1 
	
}