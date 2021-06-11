// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_agregar_objetos_al_grid(array){
	for (var i = 0; i < array_length(array); i++)
	{
	    if (layer_get_element_type(array[i]) == layerelementtype_instance)
	    {
		    var objetos_layer = array[i];
		    var inst = layer_instance_get_instance(objetos_layer);
		    mp_grid_add_instances(global.grid_nivel, inst, false)
	    }
	}
}