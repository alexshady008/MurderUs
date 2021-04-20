/// @description Variables
// Puede escribir su código en este editor
//depth = global.depth_piso-1
depth = -y
direccion = 0
idJugador = noone
skin_pista = noone
color_pista = noone
letra_pista = noone
detective = false
sprite_muerto = false
sangre = false
particula = false
contrColor = 1
color = c_white
skin = 1
prenda = false // La skin a usar
accesorio = false //Los accesorios o mascaras a usar
sombrero = false // Los sombreros a usar
image_speed = 0

if (global.step_delta>=1) alarm[2] = 100/global.step_delta
else alarm[2] = 100
