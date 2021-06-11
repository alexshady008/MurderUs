/// @description Contr el mensaje y las etapas
// Puede escribir su código en este editor

if (btn_opcion!=noone and instance_exists(btn_opcion)) global.mensaje = btn_opcion.cadena
else if (btn_opcion==noone) global.mensaje = global.X

if (instance_exists(obj_contr_msjs_automaticos)) instance_destroy(obj_contr_msjs_automaticos)