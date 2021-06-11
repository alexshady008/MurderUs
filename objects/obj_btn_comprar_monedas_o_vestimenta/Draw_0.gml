/// @description Dibuja el boton
// Puede escribir su código en este editor
draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_white,1)

draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_chica)
var posY = y-15
var posY2 = y+15

//if (bloqueado)
//{
	if (precio<=global.monedas and bloqueado==true) {
		var tipo = scr_contr_tipo_vestimenta_desb()
	
		switch(os_get_language()) {
			case "es": 
				draw_text_outline2("DESBLOQUEAR",x,posY,c_black,1,1,c_white) 
				draw_text_outline2(""+tipo,x,posY2,c_black,1,1,c_white) 
			break;
			case "pt": 
				draw_text_outline2("DESBLOQUEAR",x,posY,c_black,1,1,c_white) 
				draw_text_outline2(""+tipo,x,posY2,c_black,1,1,c_white) 
			break;
			case "it": 
				draw_text_outline2("SBLOCCARE",x,posY,c_black,1,1,c_white) 
				draw_text_outline2(""+tipo,x,posY2,c_black,1,1,c_white) 
			break;
			case "ru": 
				draw_set_font(fnt_chica_ru)
				draw_text_outline2("РАЗБЛОКИРОВАТЬ",x,posY,c_black,1,1,c_white) 
				draw_text_outline2(""+tipo,x,posY2,c_black,1,1,c_white) 
			break;
			default: 
				draw_text_outline2("UNLOCK",x,posY,c_black,1,1,c_white) 
				draw_text_outline2(""+tipo,x,posY2,c_black,1,1,c_white) 
			break;
		}
	}
	else if (precio>global.monedas or bloqueado==false){
		switch(os_get_language()) {
			case "es": 
				draw_text_outline2("COMPRAR",x,posY,c_black,1,1,c_white) 
				draw_text_outline2("MONEDAS",x,posY2,c_black,1,1,c_white) 
			break;
			case "pt": 
				draw_text_outline2("COMPRAR",x,posY,c_black,1,1,c_white) 
				draw_text_outline2("MOEDAS",x,posY2,c_black,1,1,c_white) 
			break;
			case "it": 
				draw_text_outline2("COMPRARE",x,posY,c_black,1,1,c_white) 
				draw_text_outline2("MONETE",x,posY2,c_black,1,1,c_white) 
			break;
			case "ru": 
				draw_set_font(fnt_chica_ru)
				draw_text_outline2("КУПИТЕ",x,posY,c_black,1,1,c_white) 
				draw_text_outline2("МОНЕТЫ",x,posY2,c_black,1,1,c_white) 
			break;
			default: 
				draw_text_outline2("BUY",x,posY,c_black,1,1,c_white) 
				draw_text_outline2("COINS",x,posY2,c_black,1,1,c_white) 
			break;
		}
	}
//}