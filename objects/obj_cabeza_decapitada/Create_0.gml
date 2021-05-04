/// @description Variables
// Puede escribir su código en este editor
skin = 1
contrColor = 1
color = c_white
sangre = false
yFinal = noone
direccion = 0

dir = irandom_range(75,105)
physics_apply_impulse(x,y,lengthdir_x(1500,dir),lengthdir_y(1500,dir)) 