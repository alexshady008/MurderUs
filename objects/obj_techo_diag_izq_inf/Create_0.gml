/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

depth = global.depth_techo
tipoObjeto = 0

if (place_meeting( x, y, obj_techo_diag_izq_inf))
{ instance_destroy()}


/*
if (global.editor==false and room!=rm_lobby){
	var lay_id = layer_get_id ("Techo_tile");
	var map_id = layer_tilemap_get_id (lay_id);
	tilemap_set_at_pixel(map_id,1,x,y)
}