function scr_crear_popup_obtener_texto(argument0, argument1) {
	var objAccionar = argument0
	var titulo = argument1

	var popup = instance_create_depth(room_width/2,(room_height/2)-200,-5000000000,obj_contr_popup_obtener_texto)
	popup.titulo = titulo
	popup.objAccionar = objAccionar
	//var btn_aceptar = instance_create_depth(room_width/2,popup.y+90,-501,obj_btn_aceptar_texto_popup)
	var btn_aceptar = instance_create_depth(room_width/2,popup.y+90,-5000000100,obj_btn_aceptar_texto_popup)
	btn_aceptar.popup = popup
	popup.btn_aceptar = btn_aceptar

	popup.alarm[1] = 1


}
