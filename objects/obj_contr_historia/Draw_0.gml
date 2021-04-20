/// @description Dibuja las escenas
// Puede escribir su código en este editor

#region Dibuja las escenas
switch(global.historia)
{
	#region dibuja la primera escena
		case 1:
			draw_sprite(spr_img_historia1, 0, 0, 0)
			scr_dibuja_texto_escena1(posX_letras, posY_letras, c_white, borde_celeste)
		break
	#endregion
	
	#region dibuja la segunda escena
		case 2:
			draw_sprite(spr_img_historia2, 0, 0, 0)
			scr_dibuja_texto_escena2(posX_letras, posY_letras, c_white, borde_celeste)
		break
	#endregion
	
	#region dibuja la tercera escena
		case 3:
			draw_sprite(spr_img_historia3, 0, 0, 0)
			scr_dibuja_texto_escena3(posX_letras, posY_letras, c_white, borde_celeste)
		break
	#endregion
	
	#region dibuja la cuarta escena (rol de tripulante)
		case 4:
			#region Dibuja el fondo y los cuadrados negros
				draw_set_alpha(1)
				draw_set_alpha(0.4)
				var color = make_color_rgb(67, 175, 255)
				draw_rectangle_color(0,0,room_width,room_height,color,color,color,color,false)
				draw_set_alpha(0.15)
				draw_rectangle_color(room_width/2,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
				draw_set_alpha(1)
			#endregion
			
			// Dibuja los sprites
			scr_dibuja_sprites_escena_tripulantes()
			
			#region Dibuja las letras, icono y el recuadro de abajo
				draw_set_alpha(0.35)
				draw_rectangle_color(0,room_height-150,room_width,room_height,c_black,c_black,c_black,c_black,false)
				draw_set_alpha(1)
				var posY_titulo = 80
				draw_sprite_ext(spr_logo_tripulantes, 0, room_width/2, posY_titulo-30,0.85,0.85,0,c_white,1)
				scr_dibuja_texto_escena4(c_white, borde_celeste, room_width/2, posY_titulo+60)
			#endregion
		break
	#endregion
	
	#region dibuja la quinta escena (rol de detective)
		case 5:
			#region Dibuja el fondo y los cuadrados negros
				draw_set_alpha(1)
				draw_set_alpha(0.4)
				var color = make_color_rgb(72, 255, 155)
				draw_rectangle_color(0,0,room_width,room_height,color,color,color,color,false)
				draw_set_alpha(0.15)
				draw_rectangle_color(room_width/2,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
				draw_set_alpha(1)
			#endregion
			
			// Dibuja los sprites
			scr_dibuja_sprites_escena_detectives()
			
			#region Dibuja las letras, icono y el recuadro de abajo
				draw_set_alpha(0.35)
				draw_rectangle_color(0,room_height-150,room_width,room_height,c_black,c_black,c_black,c_black,false)
				draw_set_alpha(1)
				var posY_titulo = 80
				draw_sprite_ext(spr_logo_detectives, 0, room_width/2, posY_titulo-30,0.85,0.85,0,c_white,1)
				scr_dibuja_texto_escena5(c_white, borde_celeste, room_width/2, posY_titulo+60)
			#endregion
		break
	#endregion
	
	#region dibuja la sexta escena
		case 6:
			draw_sprite(spr_img_historia4, 0, 0, 0)
			scr_dibuja_texto_escena6(posX_letras, posY_letras, c_white, borde_rojo)
		break
	#endregion
	
	#region dibuja la septima escena (rol de asesino)
		case 7:
			#region Dibuja el fondo y los cuadrados negros
				draw_set_alpha(1)
				draw_set_alpha(0.4)
				var color = make_color_rgb(255, 74, 74)
				draw_rectangle_color(0,0,room_width,room_height,color,color,color,color,false)
				draw_set_alpha(0.15)
				draw_rectangle_color(room_width/2,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
				draw_set_alpha(1)
			#endregion
			
			// Dibuja los sprites
			scr_dibuja_sprites_escena_asesinos()
			
			#region Dibuja las letras, icono y el recuadro de abajo
				draw_set_alpha(0.35)
				draw_rectangle_color(0,room_height-150,room_width,room_height,c_black,c_black,c_black,c_black,false)
				draw_set_alpha(1)
				var posY_titulo = 80
				draw_sprite_ext(spr_logo_asesinos, 0, room_width/2, posY_titulo-30,0.85,0.85,0,c_white,1)
				scr_dibuja_texto_escena7(c_white, borde_rojo, room_width/2, posY_titulo+60)
			#endregion
		break
	#endregion
	
	#region dibuja la octava escena (rol de complice)
		case 8:
			#region Dibuja el fondo y los cuadrados negros
				draw_set_alpha(1)
				draw_set_alpha(0.4)
				var color = make_color_rgb(255, 141, 77)
				draw_rectangle_color(0,0,room_width,room_height,color,color,color,color,false)
				draw_set_alpha(0.15)
				draw_rectangle_color(room_width/2,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
				draw_set_alpha(1)
			#endregion
			
			// Dibuja los sprites
			scr_dibuja_sprites_escena_complices()
			
			#region Dibuja las letras, icono y el recuadro de abajo
				draw_set_alpha(0.35)
				draw_rectangle_color(0,room_height-150,room_width,room_height,c_black,c_black,c_black,c_black,false)
				draw_set_alpha(1)
				var posY_titulo = 80
				draw_sprite_ext(spr_logo_complices, 0, room_width/2, posY_titulo-30,0.85,0.85,0,c_white,1)
				scr_dibuja_texto_escena8(c_white, borde_rojo, room_width/2, posY_titulo+60)
			#endregion
		break
	#endregion
}
#endregion



