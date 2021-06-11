// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_agregar_obj_a_lista_y_path(){
	if !(global.editor) {
		ds_list_add(global.lista_tareas,id)
		
		if (global.modo_jugabilidad>1 and global.modo_jugabilidad_offline>1){
			if (global.tipo_mapa_sala == "personalizado" ) {
				alarm[1] = 10
				path = path_add()
			}
		}
	}
}