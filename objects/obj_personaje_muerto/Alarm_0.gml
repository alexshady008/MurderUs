/// @description Contr su sprite de muerto parado
// Puede escribir su código en este editor

//Particulas de sangre
particula = true
if (global.step_delta>=1) alarm[3] = 50/global.step_delta
else alarm[3] = 50

//Color
if (skin==1) color = scr_crear_color(contrColor)
else color = c_white

//Cabeza decapitada
var cabeza = instance_create_depth(x,y-25,depth-1,obj_cabeza_decapitada)
cabeza.direccion = direccion
cabeza.skin = skin
cabeza.contrColor = contrColor
cabeza.yFinal = y+45
cabeza.alarm[0] = 1

// Sprite de muerto parado
scr_sprite_muerto_personajes()
sprite_muerto = 1
sangre = true

// Escala
// Derecha 
if (direccion>=0 and direccion<90) or (direccion>=270 and direccion<=360) {
	image_xscale = -1
}	
// Izquierda
if (direccion>=90 and direccion<270) {
	image_xscale = 1
}

image_speed = 0