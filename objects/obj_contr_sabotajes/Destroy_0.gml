/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

global.saboteando = false

if instance_exists(obj_btn_eliminar_sabotaje) instance_destroy(obj_btn_eliminar_sabotaje)
if instance_exists(obj_sabotear_tarea) instance_destroy(obj_sabotear_tarea)