/// @description Vuelve a la room de crear la sala
// Puede escribir su código en este editor
#region Vuelve a la room de crear la sala
	global.datos_nivel_pers = noone
	global.tipo_mapa_sala = 1
	if (os_type!=os_ios) room_goto(rm_crear_sala)
	else room_goto(rm_menu)
#endregion