/// @description Color y sprite
// Puede escribir su código en este editor

//Color
if (skin==1) color = scr_crear_color(contrColor)
else color = c_white

// Skin
scr_sprite_cabeza_decapitada()
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