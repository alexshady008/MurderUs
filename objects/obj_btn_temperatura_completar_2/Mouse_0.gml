/// @description Se presiona
// Puede escribir su código en este editor
if (global.tarea_completada==false) {
	escala = 1.1
	image_index = 1
	image_speed = 0
	if (instance_exists(obj_tareas_completar) and obj_tareas_completar.total_puntos_objetivos!=false){
		//obj_tareas_completar.completando = true
		if (obj_tareas_completar.punto_actual[num] < 100) obj_tareas_completar.punto_actual[num]+=0.5
	}
}