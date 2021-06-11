// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_crear_indicador_tarea(){
	var angulo = 0
	var punto_x = 0
	var punto_y = 0
	var mx = 0
	var my = 0
	var n = 128  //96
	var nW = sprite_width  
	var nH = sprite_height

	var indicador_creado = false
	while(indicador_creado == false)
	{
		punto_x = x + lengthdir_x (nW, angulo);
		punto_y = y + lengthdir_y (nH, angulo);
		mx = (punto_x div global.celda_ancho) * global.celda_ancho+(global.celda_ancho/2)
		my = (punto_y div global.celda_alto) * global.celda_alto+(global.celda_alto/2)
		//if (mp_grid_get_cell(global.grid_nivel, mx, my) != -1){
		if (mp_grid_path(global.grid_nivel, path, obj_personaje_bot.x, obj_personaje_bot.y, mx, my, false)){
			instance_create_depth(mx,my,depth, obj_indicador_tarea)
			indicador_creado = true
			break
		}	
		else {
			if (angulo<360) angulo+=global.celda_ancho
			else indicador_creado = true  
		}
	}

}