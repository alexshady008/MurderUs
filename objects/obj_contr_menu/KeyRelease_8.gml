/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if !(instance_exists(obj_contr_popup_obtener_texto)){
	if (room == rm_menu) game_end()
	else if (room == rm_menu2) room_goto(rm_menu)
}
