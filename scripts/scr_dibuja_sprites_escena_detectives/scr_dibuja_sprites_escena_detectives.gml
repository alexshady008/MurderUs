// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibuja_sprites_escena_detectives(){
	#region Dibuja los sprite 
		#region Lado izquierdo
			var c_color_huella = make_color_rgb(0,255,255)
			draw_sprite_ext(spr_huella_dactilar, 0, 160, 256, 1,1,0,c_color_huella,1)
			draw_sprite_ext(spr_pers1_parado, 0, 154, 296,-1,1,0,c_black,1)
			draw_sprite_ext(spr_pers1_parado, 0, 320, 128,-1,1,0,c_black,1)
			draw_sprite_ext(spr_bolsa_cadaver, 0, 601, 321,-0.75,0.75,0,c_black,1)
			draw_sprite_ext(spr_pers1_parado, 0, 609, 318,-1,1,0,c_black,1)
			draw_sprite(spr_imgs_huellas, 0, 352, 320)
			var c_color_pers_muerto = make_color_rgb(34,88,186)
			draw_sprite(spr_sangre_piso_persMuerto, 0, 288, 464)
			draw_sprite_ext(spr_pers1_muerto_acostado, 0, 288, 464, 1,1,0,c_color_pers_muerto,1)
			var c_color_pers_vivo = make_color_rgb(77,77,77)
			draw_sprite_ext(spr_sombra_pers, 0, 240, 480+43, 1, 1, 0, c_white, 0.35)
			draw_sprite_ext(spr_pers1_parado, 0, 240, 480, -1,1,0,c_color_pers_vivo,1)
			draw_sprite_ext(spr_tarea_analisis_2, 0, 468, 386,1,1,0,c_red,1)
			draw_sprite(spr_botiquin_reservorio, 0, 468, 386)  
			draw_sprite(spr_imgs_iconoArreglar, 0, 468, 304)
			draw_sprite(spr_btn_investigar, 0, 560, 496)
		#endregion
				
		#region Lado derecho
			var c_color_pers1 = make_color_rgb(57,181,74)
			draw_sprite_ext(spr_sombra_pers, 0, 720, 208+43, 1, 1, 0, c_white, 0.35)
			draw_sprite_ext(spr_pers1_parado, 0, 720, 208, -1,1,0,c_color_pers1,1)
			var c_color_pers2 = make_color_rgb(247,147,30)
			draw_sprite_ext(spr_sombra_pers, 0, 784, 208+43, 1, 1, 0, c_white, 0.35)
			draw_sprite_ext(spr_pers1_parado, 0, 784, 208, -1,1,0,c_color_pers2,1)
			var c_color_pers3 = make_color_rgb(193,39,45)
			draw_sprite_ext(spr_sombra_pers, 0, 768, 256+43, 1, 1, 0, c_white, 0.35)
			draw_sprite_ext(spr_pers1_parado, 0, 768, 256, -1,1,0,c_color_pers3,1)
			
			var c_color_pers4 = make_color_rgb(0,255,255)
			draw_sprite_ext(spr_sombra_pers, 0, 903, 302+43, 1, 1, 0, c_white, 0.35)
			draw_sprite_ext(spr_pers1_parado, 0, 903, 302, 1,1,0,c_color_pers4,1)
			draw_sprite_ext(spr_logo_asesinos, 0, 903, 222, 0.65,0.65,0,c_white,1)
			draw_sprite(spr_imgs_sorpesa, 0, 876, 282)
			var c_color_pers5 = make_color_rgb(235,235,235)
			draw_sprite_ext(spr_sombra_pers, 0, 1024, 256+43, 1, 1, 0, c_white, 0.35)
			draw_sprite_ext(spr_pers1_parado, 0, 1024, 256, 1,1,0,c_color_pers5,1)
			draw_sprite_ext(spr_logo_asesinos, 0, 1024, 176, 0.65,0.65,0,c_white,1)
			draw_sprite(spr_imgs_iconoExclamacion, 0, 974, 223)
			var c_color_pers6 = make_color_rgb(217,208,0)
			draw_sprite_ext(spr_sombra_pers, 0, 1120, 320+43, 1, 1, 0, c_white, 0.35)
			draw_sprite_ext(spr_pers1_parado, 0, 1120, 320, 1,1,0,c_color_pers6,1)
			draw_sprite_ext(spr_logo_complices, 0, 1120, 240, 0.65,0.65,0,c_white,1)
			draw_sprite(spr_imgs_gotadeAgua, 0, 1135, 296)
			var c_color_pers7 = make_color_rgb(102,45,145)
			draw_sprite_ext(spr_sombra_pers, 0, 1232, 272+43, 1, 1, 0, c_white, 0.35)
			draw_sprite_ext(spr_pers1_parado, 0, 1232, 272, 1,1,0,c_color_pers7,1)
		
			draw_sprite(spr_imgs_pnegro_detective, 0, 784, 464)
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)
			draw_set_font(fnt_normal)
			draw_sprite(spr_imgs_dedoApuntando, 0, 1200, 496)
			draw_text_color(1200+35,496-35,"x2",c_black,c_black,c_black,c_black,1)
		#endregion
	#endregion
}