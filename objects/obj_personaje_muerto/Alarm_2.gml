/// @description Contr su sprite de muerto acostado
// Puede escribir su código en este editor
depth = global.depth_piso-1

scr_sprite_muerto2_personajes()
sprite_muerto = 2
sangre = true


// Derecha 
if (direccion>=0 and direccion<90) or (direccion>=270 and direccion<=360) {
	image_xscale = -1
}	
// Izquierda
if (direccion>=90 and direccion<270) {
	image_xscale = 1
}

image_speed = 0