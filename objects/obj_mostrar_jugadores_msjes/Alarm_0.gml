/// @description Contr el mensaje y las etapas
// Puede escribir su código en este editor

if (btn_opcion!=noone and instance_exists(btn_opcion)) global.mensaje = btn_opcion.cadena
else if (btn_opcion==noone) global.mensaje = global.A

if (instance_exists(obj_contr_msjs_automaticos)){
	if (global.max_etapa_mjes==global.etapa_msjs) instance_destroy(obj_contr_msjs_automaticos)	
	else global.etapa_msjs++
}


if (global.max_etapa_mjes==5){
	var mas_opciones = instance_create_depth(x, y, depth-10, obj_mostrar_lugares_msjes)
	if (btn_opcion!=noone and instance_exists(btn_opcion)) mas_opciones.btn_opcion = btn_opcion
	instance_destroy()
}