// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibuja_sprites_escena_complices(){
	#region Dibuja los sprite 
		#region Lado izquierdo
			var c_color_pers_vivo = make_color_rgb(242,213,0)
			draw_sprite_ext(spr_sombra_pers, 0, 80, 128+43, 1, 1, 0, c_white, 0.35)
			draw_sprite_ext(spr_pers1_parado, 0, 80, 128, -1,1,0,c_color_pers_vivo,1)
			draw_sprite_ext(spr_imgs_iconoExclamacion, 0, 112, 80, 0.65, 0.65, 0, c_white, 1)
			var c_color_pers_muerto = make_color_rgb(0,85,209)
			draw_sprite(spr_imgs_sangre, 0, 176, 144)
			draw_sprite_ext(spr_pers1_muerto_acostado, 0, 144, 112, 1,1,0,c_color_pers_muerto,1)
			draw_sprite_ext(spr_sombra_pers, 0, 401, 324, 1.5,1.5,0,c_white,0.35)
			draw_sprite(spr_imgs_persAmarillo_llevandoCuerpo, 0, 400, 224)
			draw_sprite(spr_imgs_persAmarillo_limpiando, 0, 224, 400)
			draw_sprite(spr_hueco_alcantarilla, 1, 480, 352)
			draw_sprite(spr_imgs_flechas, 0, 304, 288)
			draw_sprite(spr_btn_limpiar, 0, 560, 496)
		#endregion
				
		#region Lado derecho
			var c_color_pers1= make_color_rgb(77,77,77)
			draw_sprite_ext(spr_sombra_pers, 0, 768, 272+43, 1, 1, 0, c_white, 0.35)
			draw_sprite_ext(spr_pers1_parado, 0, 768, 272, -1,1,0,c_color_pers1,1)
			draw_sprite_ext(spr_imgs_sorpesa, 0, 802, 255, -1,1,0,c_white,1)
			draw_sprite(spr_imgs_iconoInterrogacion, 0, 768, 192)
			draw_sprite_ext(spr_logo_asesinos, 0, 864, 208, 0.65,0.65,0,c_white,1)
			draw_sprite(spr_imgs_iconoMano, 0, 1040, 208)
			var c_color_pers2= make_color_rgb(235,235,235)
			draw_sprite_ext(spr_sombra_pers, 0, 1152, 224+43, 1, 1, 0, c_white, 0.35)
			draw_sprite_ext(spr_pers1_parado, 0, 1152, 224, 1,1,0,c_color_pers2,1)
			draw_sprite(spr_imgs_gotadeAgua, 0, 1168, 208)
			
			draw_sprite_ext(spr_sombra_pers, 0, 960, 410, 1.4,1.4,0,c_white,0.35)
			draw_sprite(spr_imgs_persAmrillo_brazosEstirados, 0, 960, 320)
			
			draw_sprite_ext(spr_pers1_parado, 0, 768, 432, -2,2,0,c_black,1)
			draw_sprite_ext(spr_pers1_parado, 0, 864, 464, -2,2,0,c_black,1)
			draw_sprite_ext(spr_pers1_parado, 0, 976, 464, 2,2,0,c_black,1)
			draw_sprite_ext(spr_pers1_parado, 0, 1072, 432, 2,2,0,c_black,1)
		
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)
			draw_set_font(fnt_normal)
			draw_sprite(spr_imgs_dedoApuntando, 0, 1200, 496)
			draw_text_color(1200+35,496-35,"-1",c_black,c_black,c_black,c_black,1)
		#endregion
	#endregion
}