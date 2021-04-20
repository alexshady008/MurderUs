function scr_crear_popup_pregunta(argument0, argument1, argument2) {
	var objAccionar = argument0
	var tipoPop = argument1
	var msg = argument2

	switch(tipoPop){
		case "msgChico":
			var popup = instance_create_depth(room_width/2,(room_height/2)-40,-5000000000,obj_contr_popup)
			popup.tipoMsg = tipoPop
			popup.msg = msg
			var btn_si = instance_create_depth(popup.x-170,popup.y+143,-5000000100,obj_btn_si_popup)
			btn_si.popup = popup
			btn_si.objAccionar = objAccionar
			var btn_no = instance_create_depth(popup.x+170,popup.y+143,-5000000100,obj_btn_no_popup)
			btn_no.popup = popup
			popup.btn_si = btn_si
			popup.btn_no = btn_no
			
			popup.alarm[1] = 1
		break;
		/*case "msgMediano":
			var popup = instance_create_depth(room_width/2,(room_height/2)-46,-5000000000,obj_contr_popup)
			popup.tipoMsg = tipoPop
			popup.msg = msg
			var btn_si = instance_create_depth(popup.x-170,popup.y+143,-5000000100,obj_btn_si_popup)
			btn_si.popup = popup
			btn_si.objAccionar = objAccionar
			var btn_no = instance_create_depth(popup.x+170,popup.y+143,-5000000100,obj_btn_no_popup)
			btn_no.popup = popup
			popup.btn_si = btn_si
			popup.btn_no = btn_no
		break;
		case "msgGrande":
			var popup = instance_create_depth(room_width/2,(room_height/2)-44,-5000000000,obj_contr_popup)
			popup.tipoMsg = tipoPop
			popup.msg = msg
			var btn_si = instance_create_depth(popup.x-170,popup.y+143,-5000000100,obj_btn_si_popup)
			btn_si.popup = popup
			btn_si.objAccionar = objAccionar
			var btn_no = instance_create_depth(popup.x+170,popup.y+143,-5000000100,obj_btn_no_popup)
			btn_no.popup = popup
			popup.btn_si = btn_si
			popup.btn_no = btn_no
		break;
		case "msgMuyGrande":
			var popup = instance_create_depth(room_width/2,(room_height/2)-45,-5000000000,obj_contr_popup)
			popup.tipoMsg = tipoPop
			popup.msg = msg
			var btn_si = instance_create_depth(popup.x-215,popup.y+143,-5000000100,obj_btn_si_popup)
			btn_si.popup = popup
			btn_si.objAccionar = objAccionar
			var btn_no = instance_create_depth(popup.x+215,popup.y+143,-5000000100,obj_btn_no_popup)
			btn_no.popup = popup
			popup.btn_si = btn_si
			popup.btn_no = btn_no
		break;*/
	}



	/// EJEMPLOS
	//// MSG CHICO  ////
	// MINIMO
	//scr_crear_popup_mensaje("msgChico","POCAS MONEDAS!, PRUEBA COMPRANDO !!") 
	// MAXIMO
	//scr_crear_popup_mensaje("msgChico","POCAS MONEDAS!, PRUEBA COMPRANDO EN LA TIENDA VIRTUAL CON MUCHO DINERO!") 
	//// MSG MEDIANO  ////
	// MAXIMO
	//scr_crear_popup_mensaje("msgMediano","POCAS MONEDAS! PRUEBA COMPRANDO EN LA TIENDA!! SI EN LA TIENDA NO HAY ENTONCES PRUEBA OBTENIENDO MONEDAS VIRTUALES EN EL JUEGO!") 
	//// MSG GRANDE  ////
	// MAXIMO
	//scr_crear_popup_mensaje("msgGrande","POCAS MONEDAS! PRUEBA COMPRANDO EN LA TIENDA!! SI EN LA TIENDA NO HAY ENTONCES PRUEBA OBTENIENDO MONEDAS VIRTUALES! UNA VEZ QUE COMPRES EL SKIN PODRAS USARLO EN CUALQUIER NIVEL EXCEPTO EN LAS PARTIDAS ONLINE!") 
	//// MSG MUY GRANDE  ////
	// MAXIMO
	//scr_crear_popup_mensaje("msgMuyGrande","PRUEBA COMPRANDO EN LA TIENDA!! SI EN LA TIENDA NO HAY ENTONCES PRUEBA OBTENIENDO MONEDAS VIRTUALES! UNA VEZ QUE COMPRES EL SKIN PODRAS USARLO EN CUALQUIER NIVEL EXCEPTO EN LAS PARTIDAS ONLINE! LAS PARTIDAS ONLINE SE JUEGA CON OTROS JUGADORES. EL JUGADOR QUE SOBREVIVE ES EL GANADOR. EL QUE GANA MAS NIVELES ES EL JUGADOR GANADOR. PUEDES MANDAR EMOTICONES ENTRE OTRAS COSAS. ESPERO QUE TE GUSTE ESTE JUEGO Y NO OLVIDES DEJARNOS TU COMENTARIO") 




}
