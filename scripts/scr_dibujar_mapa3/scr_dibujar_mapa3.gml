// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibujar_mapa3(posX_cam, posY_cam, ver_personajes, divisor){
	var posX = posX_cam
	var posY = posY_cam
	var n_div = divisor   //5
	var escala = 1/n_div
	var alfa = 1
	var n = 64
	var pantalla_ancho =  room_width
	var pantalla_alto =  room_height
	var tilemap = layer_tilemap_get_id("Techo_tile");
		
	#region Dibuja el techo	
	for (var yy=0 ; yy<pantalla_alto ; yy+=n)
	{
		for(var xx=0 ; xx<pantalla_ancho ; xx+=n)
		{
			#region DIbuja el techo
				var tile = tilemap_get_at_pixel (tilemap,xx,yy);
				if( tile>0) draw_sprite_ext(spr_techo,0,posX,posY,escala,escala,0,c_white,alfa)
			#endregion
			
			#region DIbuja las tareas
			if !(ver_personajes){
				var inst_tarea = scr_comprobar_pos_tareas(xx,yy)
				if (inst_tarea!=noone) {
					var tarea_minimapa = inst_tarea.inst_minimapa
					if (tarea_minimapa==noone or !instance_exists(tarea_minimapa)) {
						inst_tarea.inst_minimapa = instance_create_layer(posX,posY,"Interfaz_tareas",obj_tarea_minimapa)
						inst_tarea.inst_minimapa.num_tarea_sabotear = inst_tarea.num_tarea
						inst_tarea.inst_minimapa.tarea = inst_tarea
					} else if (instance_exists(tarea_minimapa)){
						tarea_minimapa.x = posX
						tarea_minimapa.y = posY
					}
				}
			}	
			#endregion

			posX += (n/n_div)
		}
		posY += (n/n_div)
		posX = posX_cam
	}
	#endregion
	
	
	#region Dibuja al personaje
		if (instance_exists(obj_personaje)){
			var posX_pers = posX_cam + (obj_personaje.x / n_div)
			var posY_pers = posY_cam + (obj_personaje.y / n_div)
			draw_sprite_ext(spr_jugador_minimapa,0,posX_pers,posY_pers,1,1,0,c_white,alfa) 
		}
	#endregion
	
	
	#region Dibuja a las entidades
	if (ver_personajes){
		var cant_entidades = instance_number(obj_entidad_online)
		for(i=0 ; i<cant_entidades ; i++){
			var entidad = instance_find(obj_entidad_online,i)
			
			var posX_pers = posX_cam + (entidad.x / n_div)
			var posY_pers = posY_cam + (entidad.y / n_div)
			draw_sprite_ext(spr_jugador_minimapa,0,posX_pers,posY_pers,1,1,0,c_red,alfa) 
		}
	}	
	#endregion
}