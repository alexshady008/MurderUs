/// @description Cntr su movimiento
// Puede escribir su código en este editor

x-=velocidad

if (x<=1100){
	alfa -= 0.005
}

image_alpha = alfa

if (alfa<=0) instance_destroy()