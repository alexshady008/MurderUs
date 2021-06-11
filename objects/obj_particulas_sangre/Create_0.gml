/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

escala = random_range(0.5,1)
yFinal = noone
randomize()
dir = irandom_range(70,110)
impulso = irandom_range(700,2000)
physics_apply_impulse(x,y,lengthdir_x(impulso,dir),lengthdir_y(impulso,dir)) 
phy_fixed_rotation = true
image_xscale = escala
image_yscale = escala