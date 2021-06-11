/// @description Contr la caida
// Puede escribir su código en este editor

//Cae
y += vel_vertical 
//physics_apply_force(x, y, 0, vel_vertical)

//COntr su destruccion
if (limiteY!=noone){
	if (y > limiteY) instance_destroy()
}