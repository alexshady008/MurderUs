/// @description Contr cuando termina la animacion de preparando
// Puede escribir su código en este editor
if (animacion_preparando){
	animacion_preparando = false
	sprite_index=spr_tubos_colores_analisis
	image_index = 0
	image_speed = 0
	
	//Permite poder mezclar el analisis
	if (instance_exists(obj_tareas_analisis)){
		obj_tareas_analisis.preparando=false
		obj_tareas_analisis.mezclar = true
		//show_debug_message("Se puede mezclar")
	}
}

