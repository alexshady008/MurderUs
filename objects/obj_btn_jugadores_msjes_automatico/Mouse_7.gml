/// @description MUESTRA A LOS JUGADORES
// Puede escribir su código en este editor
if (global.chat==2 and global.etapa_msjs==1){
	escala = 1
	global.opciones_msjs = -1
	global.etapa_msjs=2
	global.max_etapa_mjes = 2
	instance_create_depth(x, y, depth-10, obj_mostrar_jugadores_msjes)
	//mas_opciones.btn_opcion = id
}