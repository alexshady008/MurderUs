// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_obj_creado(obj, cant, colParedes){
	
	#region Contr si se crea arriba del mismo objeto
		if (place_meeting( x, y, obj)) instance_destroy()
	#endregion
	
	#region Contr la cantidad maxima a crearse
		if (instance_number(obj)>cant){
			obj_contr_editor.aviso_objeto_cant_maxima = true
			obj_contr_editor.alarm[4] = 70
			instance_destroy()
		}
	#endregion

	#region Se elimina si se crea arriba de un objeto por defecto del editor
	if (colParedes!=noone){
		var obj_colision
		obj_colision = instance_place(x,y,all)
		
		#region Contr cuando no debe colisionar con una pared
		if !(colParedes){
			var colision_piso = true
			
			if (global.mapa_elegido==1 or global.mapa_elegido==2){
				if (obj_colision!=noone and obj_colision.tipoObjeto<=0)  colision_piso = false
			}
			// Comprueba si es el mapa 3 y si colisiona con los tiles de paredes
			else if (global.mapa_elegido==3) {
				var tilemap_paredes = layer_tilemap_get_id("Paredes");
				var tile_paredes = tilemap_get_at_pixel(tilemap_paredes,x,y);
				var tilemap_agua = layer_tilemap_get_id("Agua");
				var tile_agua = tilemap_get_at_pixel(tilemap_agua,x,y);
				var tilemap_cascada = layer_tilemap_get_id("Cascadas");
				var tile_cascada = tilemap_get_at_pixel(tilemap_cascada,x,y);
				if( tile_paredes>0 or tile_agua>0 or tile_cascada>0) colision_piso = false
			}
			
			if !(colision_piso) {
				obj_contr_editor.aviso_objeto_no_creado = true
				obj_contr_editor.alarm[3] = 60
				instance_destroy()
			}
		}
		#endregion
		
		#region Contr cuando debe colisionar con una pared
		else if (colParedes){
			var colision_pared = true
			
			if (global.mapa_elegido==1 or global.mapa_elegido==2){
				if (obj_colision!=noone and obj_colision.tipoObjeto>=0) 
					or (obj_colision==noone) colision_pared = false
			}
			
			// Comprueba si es el mapa 3 y si colisiona con los tiles de paredes
			else {
				var tilemap_paredes = layer_tilemap_get_id("Paredes");
				var tile_paredes = tilemap_get_at_pixel(tilemap_paredes,x,y);
				if( tile_paredes<=0 ) colision_pared = false
			}
			
			if !(colision_pared){
				obj_contr_editor.aviso_objeto_de_pared_no_creado = true
				obj_contr_editor.alarm[3] = 60
				instance_destroy()
			}
		}
		#endregion
	}	
	#endregion
		
	#region Se elimina si se crea arriba de un tile del techo
		var tilemap = layer_tilemap_get_id("Techo_tile");
		var tile = tilemap_get_at_pixel(tilemap,x,y);
		if( tile>0 ) {
			contr_crear_tarea = true
			obj_contr_editor.aviso_objeto_no_creado = true
			obj_contr_editor.alarm[3] = 60
			instance_destroy()
		}	
	#endregion
	
	#region Si no se elimina, cambia la mascara de colision
		spr_mask = sprite_duplicate(sprite_index)
		sprite_collision_mask(spr_mask, true, 1, 0, 0, 0, 0, 0, 0)
		mask_index = spr_mask
	#endregion
	
}