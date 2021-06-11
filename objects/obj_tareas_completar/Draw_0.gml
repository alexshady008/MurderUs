/// @description Dibuja la interfaz
// Puede escribir su código en este editor

#region Dibuja el fondo de la pantalla negra
	draw_set_alpha(global.alfaFondo)
	draw_rectangle_color(global.cam_x,global.cam_y,global.cam_x+global.cam_ancho,global.cam_y+global.cam_alto,c_black, c_black, c_black, c_black, false)
	draw_set_alpha(1)
#endregion


#region Dibuja el fondo y sus barras
	if (tipo!=false){
		switch(tipo){
			// Completar 1
			case 1: 
				draw_sprite(spr_fondo_completar_1,0,global.cam_x+640,global.cam_y+360) 
				var posX = global.cam_x+655
				var posY = global.cam_y+520
				draw_sprite(spr_barra_transmision_completar_1,0, posX, posY)
				draw_healthbar(posX, posY,posX+300, posY+25, porc_completado, c_black, c_yellow, c_yellow, 0, false, false)
			break
			
			
			// Completar 2
			case 2: 
				draw_sprite(spr_fondo_completar_2,0,global.cam_x+640,global.cam_y+360) 
				
				#region Dibuja la barra del objetivo
					var posX = global.cam_x+280  //227
					var posY = global.cam_y+344
					draw_sprite(spr_barra_temp_completar_2,0, posX, posY)
					if (total_puntos_objetivos!=false){
						for(i=0 ; i<total_puntos_objetivos ; i++) {
							draw_healthbar(posX, posY,posX+716, posY+29, punto_actual[i], c_black, c_red, c_yellow, 0, false, false)
							var ancho_total_barra = 716  
							var posX_objetivo = (punto_objetivo[i]*ancho_total_barra)/100
							draw_sprite(spr_indicador_temp_completar_2,0, posX+posX_objetivo, posY)
						}	
					}
				#endregion
				
				#region Dibuja las confirmaciones
					draw_sprite(spr_confirmacion_1_completar_2,0,global.cam_x+315,global.cam_y+306) 
					draw_sprite(spr_confirmacion_1_completar_2,0,global.cam_x+370,global.cam_y+306) 
					draw_sprite(spr_confirmacion_2_completar_2,0,global.cam_x+430,global.cam_y+306) 
					if (porc_completado>0) draw_sprite(spr_confirmacion_1_completar_2,1,global.cam_x+315,global.cam_y+306) 
					if (porc_completado>=40) draw_sprite(spr_confirmacion_1_completar_2,1,global.cam_x+370,global.cam_y+306) 
					if (porc_completado>=98) draw_sprite(spr_confirmacion_2_completar_2,1,global.cam_x+430,global.cam_y+306) 
				#endregion
			break
			
			
			// Completar 3
			case 3: 
				draw_sprite(spr_fondo_completar_3,0,global.cam_x+640,global.cam_y+360) 
				
				#region Dibuja la barra de los objetivos
					var posX = global.cam_x+436  
					var posY = global.cam_y+359
					///draw_sprite(spr_barra_temp_completar_2,0, posX, posY)
					if (total_puntos_objetivos!=false){
						for(i=0 ; i<total_puntos_objetivos ; i++) {
							draw_sprite(spr_barra_energ_completar_3,0,posX-12, posY-50)
							draw_healthbar(posX-12, posY-50,posX+12, posY-270, punto_actual[i], c_dkgray, c_lime, c_lime, 2, true, true)
							var alto_barra = 220  
							var posY_objetivo = (punto_objetivo[i]*alto_barra)/100
							draw_sprite(spr_indicador_energ_completar_3,0, posX-60, (posY-50)-posY_objetivo)
							posX+=202
						}	
					}
					
					//if (global.tarea_completada) draw_sprite(spr_indicador_energ_completar_3,1, posX-60, (posY-50)-posY_objetivo)
				#endregion
				
				#region Completa la barra de completado
					var posX = global.cam_x+285  
					var posY = global.cam_y+549
					draw_sprite(spr_barra_conf_completar_3,0,posX, posY)
					draw_healthbar(posX, posY,posX+704, posY+37, porc_completado, c_dkgray, c_fuchsia, c_fuchsia, 0, false, false)
				#endregion
				
				#region Dibuja la confirmacion
					if (global.tarea_completada) draw_sprite(spr_confirmacion_2_completar_2,1,global.cam_x+928,global.cam_y+480) 
					else draw_sprite(spr_confirmacion_2_completar_2,0,global.cam_x+928,global.cam_y+480) 
				#endregion
			break
		}
	}
#endregion


#region DIbuja el titulo
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	var posX =global.cam_x+640
	var posY = global.cam_y+46
		
	if !(global.tarea_completada)
	{
		draw_set_font(fnt_grande)
		switch(tipo){
			// Tarea 1
			case 1:
				switch(os_get_language()) {
					case "es": draw_text_outline("ARRASTRAR LA AGUJA HASTA LA FRECUENCIA",posX,posY,c_black,1,1,c_white) break;
					case "pt": draw_text_outline("ARRASTE A AGULHA ATÉ A FREQUÊNCIA",posX,posY,c_black,1,1,c_white) break;
					case "it": draw_text_outline("TRASCINA L'AGO FINO ALLA FREQUENZA",posX,posY,c_black,1,1,c_white) break;
					case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("НАДЕВАЙТЕ ИГЛУ НА ЧАСТОТУ",posX,posY,c_black,1,1,c_white) break;
					default: draw_text_outline("DRAG THE NEEDLE UP TO FREQUENCY",posX,posY,c_black,1,1,c_white) break;
				}
			break
			
			// Tarea 2
			case 2:
				switch(os_get_language()) {
					case "es": draw_text_outline("MANTENER EL NIVEL DE LA BARRA EN EL INDICADOR",posX,posY,c_black,1,1,c_white) break;
					case "pt": draw_text_outline("MANTENHA O NÍVEL DA BARRA NO INDICADOR",posX,posY,c_black,1,1,c_white) break;
					case "it": draw_text_outline("MANTENERE LA BARRA A LIVELLO SULL'INDICATORE",posX,posY,c_black,1,1,c_white) break;
					case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ПОДДЕРЖИВАЙТЕ УРОВЕНЬ ПОЛОСКИ ИНДИКАТОРА",posX,posY,c_black,1,1,c_white) break;
					default: draw_text_outline("KEEP THE BAR LEVEL ON THE INDICATOR",posX,posY,c_black,1,1,c_white) break;
				}
			break
			
			// Tarea 3
			case 3:
				switch(os_get_language()) {
					case "es": draw_text_outline("MANTENER EL NIVEL LAS BARRAS EN SUS INDICADORES",posX,posY,c_black,1,1,c_white) break;
					case "pt": draw_text_outline("MANTENHA O NÍVEL DE BARRAS EM SEUS INDICADORES",posX,posY,c_black,1,1,c_white) break;
					case "it": draw_text_outline("MANTENERE LE BARRE A LIVELLO SUI LORO INDICATORI",posX,posY,c_black,1,1,c_white) break;
					case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ЗАПОЛНИТЕ ЦЕНТРАЛЬНЫЙ БАР",posX,posY,c_black,1,1,c_white) break;
					default: draw_text_outline("KEEP THE BARS LEVEL ON THEIR INDICATORS",posX,posY,c_black,1,1,c_white) break;
				}
			break
		}	
		
	}	
	else 
	{
		draw_set_font(fnt_grande)
		switch(os_get_language()) {
			case "es": draw_text_outline("¡TAREA TERMINADA!",posX,posY,c_black,1,1,c_white) break;
			case "pt": draw_text_outline("TAREFA COMPLETA!",posX,posY,c_black,1,1,c_white) break;
			case "it": draw_text_outline("COMPITO COMPLETATO!",posX,posY,c_black,1,1,c_white) break;
			case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ЗАДАЧА ВЫПОЛНЕНА!",posX,posY,c_black,1,1,c_white) break;
			default: draw_text_outline("TASK COMPLETED!",posX,posY,c_black,1,1,c_white) break;
		}
	}
#endregion
