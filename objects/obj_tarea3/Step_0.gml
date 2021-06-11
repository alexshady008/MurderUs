/// @description Comprueba si el jugador est'a cerca
// Puede escribir su código en este editor
if !(global.editor)
{
#region comprueba si se saboteo esa tarea
	if (global.tarea_saboteada != noone){
		if (num_tarea == global.tarea_saboteada){
			sabotado = true
			global.tarea_saboteada_x = x
			global.tarea_saboteada_y = y
		}
		else {
			sabotado = false
		}
	}
	else {
		sabotado = false
	}
#endregion

#region Comprueba si se debe marcar
if !(sabotado)
{
	if (global.jugador_tipo != "IMPOSTOR"){
		if instance_exists(obj_personaje){
			var distancia = point_distance(x,y,obj_personaje.x,obj_personaje.y)
	
			if (distancia<rango_marcador) marcado=true
			else marcado=false
		}
	}
}
else {
	if instance_exists(obj_personaje){
		var distancia = point_distance(x,y,obj_personaje.x,obj_personaje.y)
	
		if (distancia<rango_marcador) marcado=true
		else marcado=false
	}
}
#endregion

}