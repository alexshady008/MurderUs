/*
function scr_crear_tarea(argument0, argument1, argument2, argument3) {
	var posX = argument0
	var posY = argument1
	var contr_tarea = argument2
	var num_tarea = argument3


	switch(contr_tarea){
		case 0: var inst_tarea = instance_create_layer(posX,posY,"ObjTareas",obj_tarea1) break
		case 1: var inst_tarea = instance_create_layer(posX,posY,"ObjTareas",obj_tarea2) break
		case 2: var inst_tarea = instance_create_layer(posX,posY,"ObjTareas",obj_tarea3) break
		case 3: var inst_tarea = instance_create_layer(posX,posY,"ObjTareas",obj_tarea4) break
		case 4: var inst_tarea = instance_create_layer(posX,posY,"ObjTareas",obj_tarea5) break
		case 5: var inst_tarea = instance_create_layer(posX,posY,"ObjTareas",obj_tarea6) break
		case 6: var inst_tarea = instance_create_layer(posX,posY,"ObjTareas",obj_tarea7) break
		case 7: var inst_tarea = instance_create_layer(posX,posY,"ObjTareas",obj_tarea8) break
		case 8: var inst_tarea = instance_create_layer(posX,posY,"ObjTareas",obj_tarea9) break
		case 9: var inst_tarea = instance_create_layer(posX,posY,"ObjTareas",obj_tarea10) break
		case 10: var inst_tarea = instance_create_layer(posX,posY,"ObjTareas",obj_tarea11) break
		case 11: var inst_tarea = instance_create_layer(posX,posY,"ObjTareas",obj_tarea12) break
		case 12: var inst_tarea = instance_create_layer(posX,posY,"ObjTareas",obj_tarea13) break
		case 13: var inst_tarea = instance_create_layer(posX,posY,"ObjTareas",obj_tarea14) break
		case 14: var inst_tarea = instance_create_layer(posX,posY,"ObjTareas",obj_tarea15) break
	}


	//var tarea_elegida = choose(obj_tarea1,obj_tarea2,obj_tarea3,obj_tarea4,obj_tarea5,obj_tarea6,obj_tarea7)
	//var inst_tarea = instance_create_layer(posX,posY,"ObjTareas",tarea_elegida)
	inst_tarea.num_tarea = num_tarea


}
