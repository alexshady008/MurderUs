/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

#region Se activa o desactiva el teclado cuando se presiona el campo para escribir
if (mouse_check_button_released(mb_left)){

	if (obj_contr_asincrono.estadoTeclado=="oculto") {
		if (mouse_x>x-331) and (mouse_x<x+331) and (mouse_y>y-45) and (mouse_y<y+45){
			keyboard_virtual_show(kbv_type_default, kbv_returnkey_default, kbv_autocapitalize_none, false)
		}
	}
	//else if (keyboard_virtual_status() == true) {
	else if (obj_contr_asincrono.estadoTeclado=="visible"){
		var alturaTeclado = keyboard_virtual_height()
		var anchoPantalla = display_get_width()
		var alturaPantalla = display_get_height()
		if (mouse_x>0) and (mouse_x<anchoPantalla) and (mouse_y>0) and (mouse_y<(alturaPantalla-alturaTeclado)){
			keyboard_virtual_hide()
		}
	}
}
#endregion

#region Controla el valor de la entrada del teclado
	if keyboard_virtual_status(){
		
		if (string_length(keyboard_string) > 0 and string_length(keyboard_string) <= maxLetras) { 
			valor = keyboard_string
		} 
		else if (string_length(keyboard_string) <= 0){
			valor = ""
		}
		else if (string_length(keyboard_string) > maxLetras){
			keyboard_string = valor
		}
		
    }
	else{
		keyboard_string = valor
	}
#endregion

#region Controla cuando se presiona enter
if keyboard_check_pressed(vk_anykey){

	switch(string_tipo){
		case 0:
			string1 = keyboard_string;
			//show_debug_message(string_length(string1))
			//show_debug_message(string_length(string2))
			string_tipo = 1
			if string_length(string1) == string_length(string2){
				//SE PREIONA ENTER
				if (obj_contr_asincrono.estadoTeclado=="visible") {	
					keyboard_virtual_hide()
				}
			}
		break;
 
		case 1:
			string2 = keyboard_string;
			//show_debug_message(string_length(string1))
			//show_debug_message(string_length(string2))
			string_tipo = 0
			if string_length(string1) == string_length(string2){
				//SE PREIONA ENTER
				if (obj_contr_asincrono.estadoTeclado=="visible") {	
					keyboard_virtual_hide()
				}
			}
		break;
	}
}
#endregion


//if keyboard_check_pressed(vk_backspace) show_message_async("VOLVER ATRAS!!")