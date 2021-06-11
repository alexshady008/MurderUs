/// @description Contr si debe mostrar el nombre o no
// Puede escribir su código en este editor

depth = global.depth_nombre_habitacion


if instance_exists(obj_personaje){
	var distancia = point_distance(x,y,obj_personaje.x,obj_personaje.y)
	
	if (distancia<rango_marcador) mostrar_nombre=true
	else mostrar_nombre=false
}