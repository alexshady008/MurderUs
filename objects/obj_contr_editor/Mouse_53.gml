/// @description Crea objetos
// Puede escribir su código en este editor

if (global.jugabilidad)
{
	
#region Crea objetos

	if !(global.destruir) 
	{ 
 
	#region  posicion de la X e Y
		if (global.categoria_obj==1) var espacio = cuadricula 
		else var espacio = cuadricula/2 
		X = (mouse_x div espacio) * espacio
		Y = (mouse_y div espacio) * espacio
	#endregion
	
	
	if (X>0 and X<room_width) and (Y>0 and Y<room_height)
	{
		
	#region Crea objetos cuando estan habilitadas las opciones
		if (global.visible_opciones == true) {
			if (mouse_y > cam_y+(288/global.zoom) and mouse_y < (cam_y+cam_alto)-(750/global.zoom)) and !(position_meeting(mouse_x, mouse_y, obj_cambiar_opciones)) {
				scr_crear_obj_editor()
			}
		}
	#endregion
			
	#region Crea objetos cuando estan deshabilitadas las opciones
		if (global.visible_opciones == false) {
			if !(position_meeting(mouse_x, mouse_y, obj_cambiar_opciones)) {
				scr_crear_obj_editor()
			}
		}
	#endregion
 
	}
	
	}

#endregion

}