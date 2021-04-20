// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibuja_sprites_escena_tripulantes(){
	#region Dibuja los sprite 
		#region Lado izquierdo
			draw_sprite(spr_imgs_flechas2, 0, 279, 294)
			draw_sprite_ext(spr_tarea_recoleccion_3, 0, 62, 112,1,1,0,c_white,1)
			draw_sprite(spr_objetos_De_trabajo, 0, 62, 112)
			draw_sprite_ext(spr_tarea_rompecabezas_1, 0, 275, 194,1,1,0,c_white,1)
			draw_sprite(spr_escritorio_trabajo_lanzadera, 0, 275, 194)
			draw_sprite_ext(spr_tarea_analisis_1, 0, 115, 509,1,1,0,c_white,1)
			draw_sprite(spr_escritorio_trabajo, 0, 115, 509)
			draw_sprite_ext(spr_tarea_organizacion_1, 0, 550, 364,1,1,0,c_red,1)
			draw_sprite(spr_grua, 0, 550, 364)  //334
			draw_sprite_ext(spr_sombra_pers, 0, 332, 446, 1.4,1.4,0,c_white,0.35)
			draw_sprite(spr_imgs_persRojo_brazosArriba, 0, 332, 366)
			draw_sprite(spr_imgs_iconoArreglar, 0, 550, 252)
			draw_sprite(spr_btn_usar, 0, 560, 496)
		#endregion
				
		#region Lado derecho
			draw_sprite_ext(spr_alcantarilla_marcador, 0, 976, 496,1,1,0,c_white,1)
			draw_sprite_ext(spr_alcantarilla, 1, 976, 496,1,1,0,c_white,1)
			draw_sprite_ext(spr_sombra_pers, 0, 860, 470, 1.5,1.5,0,c_white,0.35)
			draw_sprite(spr_imgs_persAmarrilo_arrastrandoCuerpo, 0, 784, 384)
			draw_sprite_ext(spr_boton_emergencia_marcador, 0, 1168, 172,1,1,0,c_white,1)
			draw_sprite(spr_boton_emergencia, 0, 1168, 172)
			draw_sprite_ext(spr_sombra_pers, 0, 1088, 390, 1.5,1.5,0,c_white,0.35)
			draw_sprite(spr_imgs_persRojo_deAtras, 0, 1088, 300)
			draw_sprite(spr_btn_reportar, 0, 1200, 496)
		#endregion
	#endregion
}