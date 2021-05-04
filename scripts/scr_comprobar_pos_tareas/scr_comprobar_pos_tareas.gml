// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_comprobar_pos_tareas(xx,yy) {
	
	var inst = instance_position(xx,yy,obj_tarea1)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea2)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea3)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea4)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea5)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea6)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea7)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea8)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea9)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea10)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea11)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea12)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea13)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea14)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea15)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea_analisis1)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea_analisis2)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea_analisis3)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea_completar1)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea_completar2)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea_completar3)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea_mantenimiento1)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea_mantenimiento2)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea_mantenimiento3)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea_recoleccion1)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea_recoleccion2)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea_recoleccion3)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea_rompecabezas1)
	if (inst==noone) inst = instance_position(xx,yy,obj_tarea_organizacion1)
	if (inst==noone) inst = noone

	return inst
	
}