/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

#region Contr atributos del asesino
	color_asesino = c_white
	tipo_animacion_asesino = 2
#endregion

#region Contr atributos el asesinado
	if (skin_asesinado==1) color_asesinado = scr_crear_color(contrColor_asesinado)
	else color_asesinado = c_white
#endregion

#region COntr los frame maximos y la alarma
	max_frame = scr_frame_max_animacion_asesinar(skin_asesino,tipo_animacion_asesino)
	alarm[1] = tiempo_frame  //Cambia el fram de la animacion
#endregion