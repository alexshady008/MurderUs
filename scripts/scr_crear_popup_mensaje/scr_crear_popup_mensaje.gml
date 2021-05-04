function scr_crear_popup_mensaje(argument0, argument1) {
	var tipoPop = argument0
	var msg = argument1

	switch(tipoPop){
		case "msgChico":
			var popup = instance_create_depth(room_width/2,(room_height/2)-40,-5000000000,obj_contr_popup)
			popup.tipoMsg = tipoPop
			popup.msg = msg
			var btn_accion = instance_create_depth(room_width/2,popup.y+143,-5000000100,obj_btn_aceptar_popup)
			btn_accion.popup = popup
			popup.btn_aceptar = btn_accion
			popup.alarm[0] = 1
		break;
		/*case "msgMediano":
			var popup = instance_create_depth(room_width/2,(room_height/2)-46,-5000000000,obj_contr_popup)
			popup.tipoMsg = tipoPop
			popup.msg = msg
			var btn_accion = instance_create_depth(room_width/2,popup.y+143,-5000000100,obj_btn_aceptar_popup)
			btn_accion.popup = popup
			popup.btn_aceptar = btn_accion
			popup.alarm[0] = 1
		break;
		case "msgGrande":
			var popup = instance_create_depth(room_width/2,(room_height/2)-44,-5000000000,obj_contr_popup)
			popup.tipoMsg = tipoPop
			popup.msg = msg
			var btn_accion = instance_create_depth(room_width/2,popup.y+143,-5000000100,obj_btn_aceptar_popup)
			btn_accion.popup = popup
			popup.btn_aceptar = btn_accion
			popup.alarm[0] = 1
		break;
		case "msgMuyGrande":
			var popup = instance_create_depth(room_width/2,(room_height/2)-45,-5000000000,obj_contr_popup)
			popup.tipoMsg = tipoPop
			popup.msg = msg
			var btn_accion = instance_create_depth(room_width/2,popup.y+143,-5000000100,obj_btn_aceptar_popup)
			btn_accion.popup = popup
			popup.btn_aceptar = btn_accion
			popup.alarm[0] = 1
		break;
		*/
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
	//scr_crear_popup_mensaje("msgMuyGrande","Cree tu propia sala!  1) Debes escribir un nombre de la sala.  2) Elija que tipo de sala deseas crear (publica; cualquier jugador puede acceder, o privada; solo tus amigos pueden ver y jugar tu sala desde la seccion de Salas de Amigos.)  3) Elija la cantidad de los jugadores permitidos.  4) Elija la cantidad de niveles que se podran jugar.  5) Cree su sala desde el boton Crear.  6) Una vez creada, espere a que los jugadores se unan a ella.) 


}
