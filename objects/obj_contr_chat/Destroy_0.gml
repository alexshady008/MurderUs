/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (room==rm_lobby) global.jugabilidad = true
global.chat = false
global.slider_presionado = false


if instance_exists(obj_btn_campo_mensaje) instance_destroy(obj_btn_campo_mensaje)
if instance_exists(obj_btn_enviar_mensaje) instance_destroy(obj_btn_enviar_mensaje)
if instance_exists(obj_btn_eliminar_chat) instance_destroy(obj_btn_eliminar_chat)
if instance_exists(obj_contr_popup_obtener_texto) instance_destroy(obj_contr_popup_obtener_texto)
if instance_exists(obj_contr_msjs_automaticos) instance_destroy(obj_contr_msjs_automaticos)
