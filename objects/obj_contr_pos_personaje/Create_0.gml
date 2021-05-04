/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
//depth = -y
depth = 0
ocupado = false
persOnline = noone
idJugador = noone
tipoObjeto = 0 // Indice usado para guardar, cargar y compartir los objetos en los niveles
image_speed = 0

if (room==rm_lobby) transportador = instance_create_layer(x,y+75,"Objetos", obj_transportador)
