function scr_contr_prop_mascota(argument0, argument1) {
	var mascota_tipo = argument0
	var creador = argument1
	var x_pers = creador.x
	var y_pers = creador.y
	visible=true

	switch(mascota_tipo)
	{
		case 1: var color_=scr_crear_color(creador.contrColor)  scr_mascota_propiedad(color_, x_pers+(24*image_xscale), y_pers, spr_mascota01, 0) break
		case 2: scr_mascota_propiedad(c_white, x_pers+(34*image_xscale), y_pers+30, spr_mascota02, 0) break		
		case 3: scr_mascota_propiedad(c_white, x_pers+(30*image_xscale), y_pers-16, spr_mascota03, 0)  break		
		case 4: color_mascota=scr_crear_color(creador.contrColor)  
			x=x_pers+(30*image_xscale)  y=y_pers+30 
		#region sprite
				if (creador.muerto==false){
					if (creador.moviendose==true){
						sprite_index = spr_mascota04_corriendo
						image_speed=0.7
					}
					else {
						sprite_index = spr_mascota04_parada
						image_speed=0.5
					}
				}
				else {  
					sprite_index = spr_mascota04_parada
					image_speed=0.3
				}
		#endregion
		break		
		case 5: scr_mascota_propiedad(c_white, x_pers+(24*image_xscale), y_pers, spr_mascota05_corriendo, 0.6) break		
		case 6: var color_=scr_crear_color(creador.contrColor) scr_mascota_propiedad(color_, x_pers+(34*image_xscale), y_pers+38, spr_mascota06_corriendo, 0.6) break		
		case 7: scr_mascota_propiedad(c_white, x_pers+(34*image_xscale), y_pers+35, spr_mascota07_corriendo, 0.5) break		
		case 8: scr_mascota_propiedad(c_white, x_pers+(34*image_xscale), y_pers+35, spr_mascota08_corriendo, 0.5) break		
		case 9: scr_mascota_propiedad(c_white, x_pers+(34*image_xscale), y_pers+35, spr_mascota09_corriendo, 0.5) break		
		case 10: scr_mascota_propiedad(c_white, x_pers+(34*image_xscale), y_pers, spr_mascota10_corriendo, 0.5) break		
		case 11: scr_mascota_propiedad(c_white, x_pers+(38*image_xscale), y_pers+38, spr_mascota11_corriendo, 0.6) break		
		case 12: scr_mascota_propiedad(c_white, x_pers+(34*image_xscale), y_pers-16, spr_mascota12_corriendo, 0.5) break		
		case 13: scr_mascota_propiedad(c_white, x_pers+(38*image_xscale), y_pers+38, spr_mascota13_corriendo, 0.6) break		
		case 14: scr_mascota_propiedad(c_white, x_pers+(30*image_xscale), y_pers-16, spr_mascota14_corriendo, 0.5) break		
		case 15: scr_mascota_propiedad(c_white, x_pers+(34*image_xscale), y_pers+34, spr_mascota15_corriendo, 0.3) break		
		case 16: scr_mascota_propiedad(c_white, x_pers+(34*image_xscale), y_pers+35, spr_mascota16_corriendo, 0.6) break		
		case 17: scr_mascota_propiedad(c_white, x_pers+(24*image_xscale), y_pers, spr_mascota17_corriendo, 0.6) break		
		case 18: scr_mascota_propiedad(c_white, x_pers+(34*image_xscale), y_pers+35, spr_mascota18_corriendo, 0.3) break		
		case 19: scr_mascota_propiedad(c_white, x_pers+(34*image_xscale), y_pers, spr_mascota19_corriendo, 0.5) break		
		case 20: scr_mascota_propiedad(c_white, x_pers+(34*image_xscale), y_pers, spr_mascota20_corriendo, 0.5) break		
		case 21: scr_mascota_propiedad(c_white, x_pers+(34*image_xscale), y_pers+35, spr_mascota21_corriendo, 0.5) break		
		case 22: scr_mascota_propiedad(c_white, x_pers+(34*image_xscale), y_pers+35, spr_mascota22_corriendo, 0.5) break		
		case 23: scr_mascota_propiedad(c_white, x_pers+(30*image_xscale), y_pers, spr_mascota23_corriendo, 0.6) break		
		case 24: scr_mascota_propiedad(c_white, x_pers+(34*image_xscale), y_pers+34, spr_mascota24_corriendo, 0.3) break		
		case 25: scr_mascota_propiedad(c_white, x_pers+(28*image_xscale), y_pers+38, spr_mascota25_corriendo, 0.4) break		
		case 26: scr_mascota_propiedad(c_white, x_pers+(34*image_xscale), y_pers+35, spr_mascota26_corriendo, 0.5) break		
		case 27: scr_mascota_propiedad(c_white, x_pers+(28*image_xscale), y_pers+38, spr_mascota27_corriendo, 0.4) break		
		case 28: scr_mascota_propiedad(c_white, x_pers+(30*image_xscale), y_pers, spr_mascota28_corriendo, 0.6) break		
		case 29: scr_mascota_propiedad(c_white, x_pers+(34*image_xscale), y_pers, spr_mascota29_corriendo, 0.5) break		
		case 30: scr_mascota_propiedad(c_white, x_pers+(34*image_xscale), y_pers+33, spr_mascota30_corriendo, 0.3) break	
		case 31: scr_mascota_propiedad(c_white, x_pers+(34*image_xscale), y_pers+30, spr_mascota31_corriendo, 0.3) break		
		case 32: scr_mascota_propiedad(c_white, x_pers+(38*image_xscale), y_pers+38, spr_mascota32_corriendo, 0.6) break	
		case 33: scr_mascota_propiedad(c_white, x_pers+(30*image_xscale), y_pers, spr_mascota33_corriendo, 0.6) break		
		case 34: scr_mascota_propiedad(c_white, x_pers+(24*image_xscale), y_pers, spr_mascota34_corriendo, 0.5) break		
		case 35: scr_mascota_propiedad(c_white, x_pers+(34*image_xscale), y_pers, spr_mascota35_corriendo, 0.5) break		
		case 36: scr_mascota_propiedad(c_white, x_pers+(45*image_xscale), y_pers-16, spr_mascota36_corriendo, 0.5) break		
		case 37: scr_mascota_propiedad(c_white, x_pers+(34*image_xscale), y_pers+35, spr_mascota37_corriendo, 0.5) break		
		case 38: scr_mascota_propiedad(c_white, x_pers+(34*image_xscale), y_pers, spr_mascota38_corriendo, 0.5) break		
		default: visible=false break
	}



}
