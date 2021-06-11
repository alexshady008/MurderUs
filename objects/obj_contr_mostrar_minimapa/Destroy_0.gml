/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

global.saboteando = false
global.ver_minimapa = false
global.ver_minimapa_jugadores = false

if instance_exists(obj_btn_eliminar_sabotaje) instance_destroy(obj_btn_eliminar_sabotaje)
if instance_exists(obj_tarea_minimapa) instance_destroy(obj_tarea_minimapa)