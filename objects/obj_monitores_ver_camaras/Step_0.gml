/// @description Comprueba si el jugador est'a cerca
// Puede escribir su código en este editor

if (global.editor==false)
{
	if !(global.ver_camaras)
	{
		if instance_exists(obj_personaje){
			var distancia = point_distance(x,y,obj_personaje.x,obj_personaje.y)
	
			if (distancia<rango_marcador) marcado=true
			else marcado=false
		}
	}
}