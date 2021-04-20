function scr_contr_prop_mascota(argument0, argument1) {
	var mascota_tipo = argument0
	var creador = argument1
	var x_pers = creador.x
	var y_pers = creador.y
	visible=true

	switch(mascota_tipo)
	{
		case 1: color_mascota=scr_crear_color(creador.contrColor)  
			x=x_pers+(24*image_xscale)  y=y_pers  
			sprite_index = spr_mascota01
			image_speed=0 
		break
		
		case 2: color_mascota=c_white 
			x=x_pers+(34*image_xscale)  y=y_pers+30  
			sprite_index = spr_mascota02
			image_speed=0 
		break
		
		case 3: color_mascota=c_white  
			x=x_pers+(30*image_xscale)  y=y_pers-16  
			sprite_index = spr_mascota03
			image_speed=0 
		break
		
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
		
		case 5: color_mascota=c_white 
			x=x_pers+(24*image_xscale)  y=y_pers
			sprite_index = spr_mascota05_corriendo
			image_speed=0.6
		break
		
		case 6: color_mascota=scr_crear_color(creador.contrColor)  
			x=x_pers+(34*image_xscale)  y=y_pers +38 
			sprite_index = spr_mascota06_corriendo
			image_speed=0.6
		break
		
		case 7: color_mascota=c_white 
			x=x_pers+(34*image_xscale)  y=y_pers +35
			sprite_index = spr_mascota07_corriendo
			image_speed=0.5
		break
		
		case 8: color_mascota=c_white 
			x=x_pers+(34*image_xscale)  y=y_pers +35
			sprite_index = spr_mascota08_corriendo
			image_speed=0.5
		break
		
		case 9: color_mascota=c_white 
			x=x_pers+(34*image_xscale)  y=y_pers +35
			sprite_index = spr_mascota09_corriendo
			image_speed=0.5
		break
		
		case 10: color_mascota=c_white 
			x=x_pers+(34*image_xscale)  y=y_pers 
			sprite_index = spr_mascota10_corriendo
			image_speed=0.5
		break
		
		case 11: color_mascota=c_white 
			x=x_pers+(38*image_xscale)  y=y_pers +38
			sprite_index = spr_mascota11_corriendo
			image_speed=0.6
		break
		
		case 12: color_mascota=c_white 
			x=x_pers+(34*image_xscale)  y=y_pers-16
			sprite_index = spr_mascota12_corriendo
			image_speed=0.5
		break
		
		case 13: color_mascota=c_white 
			x=x_pers+(38*image_xscale)  y=y_pers+38
			sprite_index = spr_mascota13_corriendo
			image_speed=0.6
		break
		
		case 14: color_mascota=c_white 
			x=x_pers+(30*image_xscale)  y=y_pers-16
			sprite_index = spr_mascota14_corriendo
			image_speed=0.5
		break
		
		case 15: color_mascota=c_white 
			x=x_pers+(34*image_xscale)  y=y_pers+34
			sprite_index = spr_mascota15_corriendo
			image_speed=0.3
		break
		
		case 16: color_mascota=c_white 
			x=x_pers+(34*image_xscale)  y=y_pers+35
			sprite_index = spr_mascota16_corriendo
			image_speed=0.6
		break
		
		case 17: color_mascota=c_white 
			x=x_pers+(24*image_xscale)  y=y_pers
			sprite_index = spr_mascota17_corriendo
			image_speed=0.6
		break
		
		case 18: color_mascota=c_white 
			x=x_pers+(34*image_xscale)  y=y_pers+35
			sprite_index = spr_mascota18_corriendo
			image_speed=0.3
		break
		
		case 19: color_mascota=c_white 
			x=x_pers+(34*image_xscale)  y=y_pers
			sprite_index = spr_mascota19_corriendo
			image_speed=0.5
		break
		
		case 20: color_mascota=c_white 
			x=x_pers+(34*image_xscale)  y=y_pers
			sprite_index = spr_mascota20_corriendo
			image_speed=0.5
		break
		
		case 21: color_mascota=c_white 
			x=x_pers+(34*image_xscale)  y=y_pers+35
			sprite_index = spr_mascota21_corriendo
			image_speed=0.5
		break
		
		case 22: color_mascota=c_white 
			x=x_pers+(34*image_xscale)  y=y_pers+35
			sprite_index = spr_mascota22_corriendo
			image_speed=0.5
		break
		
		/*
		*/
		
		case 24: color_mascota=c_white 
			x=x_pers+(34*image_xscale)  y=y_pers+34
			sprite_index = spr_mascota24_corriendo
			image_speed=0.3
		break
		
		case 25: color_mascota=c_white 
			x=x_pers+(28*image_xscale)  y=y_pers+38
			sprite_index = spr_mascota25_corriendo
			image_speed=0.4
		break
		
		case 26: color_mascota=c_white 
			x=x_pers+(34*image_xscale)  y=y_pers +35
			sprite_index = spr_mascota26_corriendo
			image_speed=0.5
		break
		
		case 27: color_mascota=c_white 
			x=x_pers+(28*image_xscale)  y=y_pers+38
			sprite_index = spr_mascota27_corriendo
			image_speed=0.4
		break
		
		case 28: color_mascota=c_white 
			x=x_pers+(30*image_xscale)  y=y_pers
			sprite_index = spr_mascota28_corriendo
			image_speed=0.6
		break
		
		case 29: color_mascota=c_white 
			x=x_pers+(34*image_xscale)  y=y_pers
			sprite_index = spr_mascota29_corriendo
			image_speed=0.5
		break
		
		case 30: color_mascota=c_white 
			x=x_pers+(34*image_xscale)  y=y_pers+34
			sprite_index = spr_mascota30_corriendo
			image_speed=0.3
		break
		
		case 31: color_mascota=c_white 
			x=x_pers+(34*image_xscale)  y=y_pers+30  
			sprite_index = spr_mascota31_corriendo
			image_speed=0.3
		break
		
		case 32: color_mascota=c_white 
			x=x_pers+(38*image_xscale)  y=y_pers +38
			sprite_index = spr_mascota32_corriendo
			image_speed=0.6
		break
		
		case 33: color_mascota=c_white 
			x=x_pers+(30*image_xscale)  y=y_pers
			sprite_index = spr_mascota33_corriendo
			image_speed=0.6
		break
		
		case 34: color_mascota=c_white 
			x=x_pers+(30*image_xscale)  y=y_pers
			sprite_index = spr_mascota23_corriendo
			image_speed=0.6
		break
		
		/*
		*/
		
		default: visible=false break
	}



}
