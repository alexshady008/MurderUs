/// @description Contr num habitacion editor
// Puede escribir su código en este editor
var cant_objs = instance_number(obj_hab_num_editor)
for (i=0 ; i<cant_objs ; i++){
	var inst = instance_find(obj_hab_num_editor,i)
	inst.num = i+1
	inst.alarm[0] = 1
}
