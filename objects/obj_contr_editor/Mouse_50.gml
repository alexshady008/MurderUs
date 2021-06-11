/// @description Borra objetos
// Puede escribir su código en este editor

if (global.jugabilidad)
{
	
#region Borra objetos

	if (global.destruir ) { 

		#region Borra objetos cuando estan habilitadas las opciones
			if (global.visible_opciones == true) 
			{
				if (mouse_y > cam_y+(288/global.zoom) and mouse_y < (cam_y+cam_alto)-(750/global.zoom)) /*and !(position_meeting(mouse_x, mouse_y, obj_cambiar_opciones))*/ {
					var obj_borrar
					obj_borrar = instance_position(mouse_x,mouse_y,all)
					//obj_borrar = collision_rectangle(mouse_x-32, mouse_y-32, mouse_x+32, mouse_y+32,all, false, true)
					if (obj_borrar!=noone and obj_borrar.tipoObjeto>0)
					{
						with(obj_borrar) instance_destroy()
					}
				}
			}
		#endregion
		
		#region Borra objetos cuando estan deshabilitadas las opciones
			if (global.visible_opciones == false) 
			{
				var obj_borrar
				obj_borrar = instance_position(mouse_x,mouse_y,all)
				if (obj_borrar!=noone and obj_borrar.tipoObjeto>0) {
					with(obj_borrar) instance_destroy() 
				}
			}
		#endregion
 
	}

#endregion

}