/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (global.tarea_completada==false and presionado==true){
	presionado = false
	escala = 1
	x = posX_minimo
	if (instance_exists(obj_tareas_completar)) obj_tareas_completar.punto_actual[num] = 0
}