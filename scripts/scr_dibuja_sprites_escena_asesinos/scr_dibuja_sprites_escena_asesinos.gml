// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibuja_sprites_escena_asesinos(){
	#region Dibuja los sprite 
		#region Lado izquierdo
			var c_color_pers_muerto = make_color_rgb(160,97,39)
			draw_sprite(spr_sangre_piso_persMuerto, 0, 144, 80)
			draw_sprite_ext(spr_pers1_muerto_acostado, 0, 144, 80, 1,1,0,c_color_pers_muerto,1)
			draw_sprite(spr_hierba, 0, 256, 80)
			draw_sprite_ext(spr_asesinato1_fondo, 0, 13, 301,0.75,0.75,0,c_white,1)
			draw_sprite(spr_imgs_asesinoCuchillo, 0, 176, 256)
			draw_sprite(spr_imgs_persAzul, 0, 368, 288)
			draw_sprite(spr_imgs_iconoExclamacion, 0, 304, 192)
			draw_sprite(spr_estante_grande1, 0, 176, 480)
			draw_sprite(spr_estanteria2, 0, 528, 288)
			var c_color_pers = make_color_rgb(0,186,84)
			draw_sprite_ext(spr_sombra_pers, 0, 598, 290+43, 1, 1, 0, c_white, 0.35)
			draw_sprite_ext(spr_pers1_parado, 0, 598, 290, -1,1,0,c_color_pers,1)
			draw_sprite(spr_imgs_notaMusical, 0, 607, 233)
			draw_sprite(spr_btn_asesinar, 0, 560, 496)
		#endregion
				
		#region Lado derecho
			draw_sprite(spr_hueco_alcantarilla, 0, 688, 336)
			draw_sprite_ext(spr_tarea_completar_2, 0, 752, 448, 1, 1, 0, c_red, 1)
			draw_sprite(spr_horno, 0, 752, 448)
			draw_sprite(spr_imgs_iconoArreglar, 0, 752, 256)
			draw_sprite(spr_imgs_asesinoAlcantarilla, 0, 1024, 432)
			draw_sprite_ext(spr_sombra_pers, 0, 896, 400, 1.4,1.4,0,c_white,0.35)
			draw_sprite_ext(spr_imgs_persRojo_brazosArriba, 0, 896, 320, -1, 1, 0, c_white, 1)
			draw_sprite(spr_imgs_iconoInterrogacion, 0, 896, 224)
			draw_sprite_ext(spr_sombra_pers, 0, 1008, 210, 1.2,1.2,0,c_white,0.35)
			draw_sprite_ext(spr_imgs_persRojo_brazosArriba, 0, 1008, 144, 0.75, 0.75, 0, c_white, 1)
			draw_sprite(spr_imgs_iconoInterrogacion, 0, 1120, 112)
			draw_sprite(spr_alcantarilla_2, 0, 1216, 128)
			draw_sprite(spr_alcantarilla_2, 0, 1216, 128)
			draw_sprite(spr_imgs_sangre, 0, 1120, 192)
			draw_sprite_ext(spr_pers1_muerto_acostado, 0, 1152, 160, -1, 1, 0, c_white, 1)
			draw_sprite(spr_btn_sabotear, 0, 1200, 496)
		#endregion
	#endregion
}