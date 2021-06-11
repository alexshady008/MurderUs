function scr_dibuja_jugador_especifico_parado(id_comprobar, posX_jug, posY_jug, escala, alfa, extra) {

	var jugador_nombre = noone
	var jugador_tipo_color = 1
	var jugador_color = c_white
	var jugador_skin = noone
	var jugador_prenda = 0
	var jugador_accesorio = 0
	var jugador_sombrero = 0
	var jugador_mascota = 0
	
		for(j=0 ; j<ds_list_size(global.jugadores_lista) ; j++)
		{
			var jugador_map = ds_list_find_value(global.jugadores_lista,j)
			var jugador_id = real(ds_map_find_value(jugador_map,"clienteId"))
			if (jugador_id == id_comprobar) {
				jugador_nombre = ds_map_find_value(jugador_map,"clienteNombre")
				jugador_tipo_color = real(ds_map_find_value(jugador_map,"clienteColor"))
				jugador_skin = real(ds_map_find_value(jugador_map,"clienteSkin"))
				jugador_prenda = real(ds_map_find_value(jugador_map,"clientePrenda"))
				jugador_accesorio = real(ds_map_find_value(jugador_map,"clienteAccesorio"))
				jugador_sombrero = real(ds_map_find_value(jugador_map,"clienteSombrero"))
				jugador_mascota = real(ds_map_find_value(jugador_map,"clienteMascota"))
				//ds_map_destroy(jugador_map)
				
				if (jugador_skin==1) jugador_color = scr_crear_color(jugador_tipo_color)
				else jugador_color = c_white
			}
		}
						
		// DIbuja el Skin
		if (jugador_skin!=noone) {
			scr_dibuja_jugador_parado(jugador_skin,posX_jug,posY_jug,alfa, jugador_color)
			if (extra) draw_sprite_ext(spr_medalla_personaje,0,posX_jug,posY_jug,1.5,1.5,0,c_white,1)
		}
			
		//Dibuja la vestimenta
		scr_dibuja_prenda_jug_parado(jugador_prenda,0,posX_jug,posY_jug,alfa,escala,escala)
		scr_dibuja_accesorio_jug(jugador_accesorio,posX_jug,posY_jug,alfa,escala,escala)
		scr_dibuja_sombrero_jug(jugador_sombrero,posX_jug,posY_jug,alfa,escala,escala)
		scr_dibuja_mascota_parada(jugador_mascota,posX_jug,posY_jug,alfa,escala,jugador_skin)

		// DIbuja el nombre
		if (jugador_nombre!=noone) {
		draw_set_font(fnt_chica)
		draw_text_outline(jugador_nombre,posX_jug,posY_jug-100,c_black,1,1,c_white)
		}

	//}
}
