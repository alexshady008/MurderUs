function scr_contr_dibujo_muerto_idPers(argument0, argument1, argument2, argument3) {
	var id_comprobar = argument0
	var posX_jug = argument1
	var posY_jug = argument2
	var escala = argument3

	var jugador_nombre = noone
	var jugador_tipo_color = 1
	var jugador_color = c_white
	var jugador_skin = noone
	var jugador_prenda = 0
	var jugador_accesorio = 0
	var jugador_sombrero = 0
	var jugador_mascota = 0

	for(j=0 ; j<ds_list_size(global.jugadores_lista) ; j++){
		var jugador_map = ds_list_find_value(global.jugadores_lista,j)
		var jugador_id = ds_map_find_value(jugador_map,"clienteId")
		if (jugador_id == id_comprobar) {
			jugador_nombre = ds_map_find_value(jugador_map,"clienteNombre")
			jugador_tipo_color = real(ds_map_find_value(jugador_map,"clienteColor"))
			jugador_skin = real(ds_map_find_value(jugador_map,"clienteSkin"))
			jugador_prenda = real(ds_map_find_value(jugador_map,"clientePrenda"))
			jugador_accesorio = real(ds_map_find_value(jugador_map,"clienteAccesorio"))
			jugador_sombrero = real(ds_map_find_value(jugador_map,"clienteSombrero"))
			jugador_mascota = real(ds_map_find_value(jugador_map,"clienteMascota"))
			//Contr el color
			if (jugador_skin==1) jugador_color = scr_crear_color(jugador_tipo_color)
			else jugador_color = c_white
		}
	}
			
			
	// DIbuja el Skin
	if (jugador_skin!=noone) {
		draw_sprite_ext(spr_sangre_piso_persMuerto, 0, posX_jug, posY_jug, escala, escala, 0, c_white, 1)
		//draw_sprite_ext(spr_hueso, 0, x+79, y+30, 1.5, 1.5, -90, c_white, 1)
		scr_dibuja_jugador_reportado(jugador_skin,posX_jug,posY_jug, jugador_color)
	}
			
	//Dibuja la vestimenta
	scr_dibuja_prenda_jug_muerto(jugador_prenda,0,posX_jug,posY_jug,1,escala,escala)
	scr_dibuja_accesorio_jug(jugador_accesorio,posX_jug+50,posY_jug+115,1,escala,escala)
	scr_dibuja_sombrero_jug(jugador_sombrero,posX_jug-35,posY_jug+115,1,escala,escala)
	scr_dibuja_mascota_parada(jugador_mascota,posX_jug,posY_jug,1,escala,jugador_skin)

	// DIbuja el nombre
	if (jugador_nombre!=noone) {
	draw_set_font(fnt_chica)
	draw_text_outline(jugador_nombre,posX_jug+51,posY_jug-50,c_black,1,1,c_white)
	}


}
