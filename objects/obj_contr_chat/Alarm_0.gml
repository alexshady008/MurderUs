/// @description Contr los msjs automaticos
// Puede escribir su código en este editor

if (global.chat==1){
	if (instance_exists(obj_contr_msjs_automaticos)) instance_destroy(obj_contr_msjs_automaticos)
}
else if (global.chat==2){
	if !(instance_exists(obj_contr_msjs_automaticos)) instance_create_depth(0,0,depth-100,obj_contr_msjs_automaticos)
}