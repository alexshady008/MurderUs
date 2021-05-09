// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_agregar_obj_al_grid(objeto){
	if (instance_exists(objeto)) mp_grid_add_instances(global.grid_nivel, objeto, false)
}