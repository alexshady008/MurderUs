/// @description Se sale el popup
// Puede escribir su código en este editor

if (instance_exists(obj_contr_discord)) {
	obj_contr_discord.guardado=true
	instance_destroy(obj_contr_discord)
}