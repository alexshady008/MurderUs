// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_activar_transicion_final(){
	if (instance_exists(obj_transicion)) {
		obj_transicion.aumentar_alfa = true
		obj_transicion.n_transicion = 2
	}
}