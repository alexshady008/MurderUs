// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibujar_mapa2(posX_cam, posY_cam){
	var posX = posX_cam
	var posY = posY_cam
	var n_div = 5
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
		var cant_entidades = instance_number(obj_entidad_online)
		for(i=0 ; i<cant_entidades ; i++){
			var entidad = instance_find(obj_entidad_online,i)
			
			var posX_pers = posX_cam + (entidad.x / n_div)
			var posY_pers = posY_cam + (entidad.y / n_div)
			draw_sprite_ext(spr_jugador_minimapa,0,posX_pers,posY_pers,1,1,0,c_red,alfa) 
		}
	#endregion
	
}