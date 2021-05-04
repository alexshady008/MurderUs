/// @description Muestra a los jugadores o a los lugares
// Puede escribir su código en este editor
if (global.max_etapa_mjes == 2 or global.max_etapa_mjes == 3){
	instance_create_depth(x, y, depth-10, obj_mostrar_jugadores_msjes)
}