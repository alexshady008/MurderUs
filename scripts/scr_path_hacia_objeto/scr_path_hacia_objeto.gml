// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_path_hacia_objeto(punto_x, punto_y){
	var mx = (punto_x div global.celda_ancho) * global.celda_ancho+(global.celda_ancho/2)
	var my = (punto_y div global.celda_alto) * global.celda_alto+(global.celda_alto/2)
	var path_activado = mp_grid_path(global.grid_nivel, path, x, y, mx, my, true)
	if (path_activado){
		path_start(path, vel_path, path_action_stop, false)
	}
	
	return path_activado
}



