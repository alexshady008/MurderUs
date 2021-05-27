// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_texto_regalos_traducciones(_tipo_texto){
	
	var _texto_regalo;
	
	switch (_tipo_texto) {
	    case "Accesorio":
			switch(os_get_language()) {
				case "es": _texto_regalo = "Accesorio"; break;
				case "pt": _texto_regalo = "Acessório"; break;
				case "it": _texto_regalo = "Accessorio"; break;
				case "ru": draw_set_font(fnt_grande_ru) _texto_regalo = "Аксессуар"; break;
				default: _texto_regalo = "Accessory"; break;
			}
	        break;
		case "Prenda":
	        switch(os_get_language()) {
				case "es": _texto_regalo = "Prenda"; break;
				case "pt": _texto_regalo = "Vestuário"; break;
				case "it": _texto_regalo = "Indumento"; break;
				case "ru": draw_set_font(fnt_grande_ru) _texto_regalo = "Одежда"; break;
				default: _texto_regalo = "Cloting"; break;
			}
			break;
		case "Sombrero":
	        switch(os_get_language()) {
				case "es": _texto_regalo = "Sombrero"; break;
				case "pt": _texto_regalo = "Chapéu"; break;
				case "it": _texto_regalo = "Cappello"; break;
				case "ru": draw_set_font(fnt_grande_ru) _texto_regalo = "Шляпа"; break;
				default: _texto_regalo = "Hat"; break;
			}
	        break;
		case "10 Diamantes":
	        switch(os_get_language()) {
				case "es": _texto_regalo = "10 Diamantes"; break;
				case "pt": _texto_regalo = "10 diamantes"; break;
				case "it": _texto_regalo = "10 diamanti"; break;
				case "ru": draw_set_font(fnt_grande_ru) _texto_regalo = "10 бриллиантов"; break;
				default: _texto_regalo = "10 Diamonds"; break;
			}
	        break;
		case "50 Diamantes":
	        switch(os_get_language()) {
				case "es": _texto_regalo = "50 Diamantes"; break;
				case "pt": _texto_regalo = "50 diamantes"; break;
				case "it": _texto_regalo = "50 diamanti"; break;
				case "ru": draw_set_font(fnt_grande_ru) _texto_regalo = "50 бриллиантов"; break;
				default: _texto_regalo = "50 Diamonds"; break;
			}
	        break;
		case "Mascota":
	        switch(os_get_language()) {
				case "es": _texto_regalo = "Mascota"; break;
				case "pt": _texto_regalo = "Mascote"; break;
				case "it": _texto_regalo = "Mascotte"; break;
				case "ru": draw_set_font(fnt_grande_ru) _texto_regalo = "Талисман"; break;
				default: _texto_regalo = "Pet"; break;
			}
	        break;
		case "Skin":
	        switch(os_get_language()) {
				case "es": _texto_regalo = "Skin"; break;
				case "pt": _texto_regalo = "Pele"; break;
				case "it": _texto_regalo = "Pelle"; break;
				case "ru": draw_set_font(fnt_grande_ru) _texto_regalo = "Кожа"; break;
				default: _texto_regalo = "Skin"; break;
			}
	        break;
		case "100 Diamantes":
	        switch(os_get_language()) {
				case "es": _texto_regalo = "100 Diamantes"; break;
				case "pt": _texto_regalo = "100 diamantes"; break;
				case "it": _texto_regalo = "100 diamanti"; break;
				case "ru": draw_set_font(fnt_grande_ru) _texto_regalo = "100 бриллиантов"; break;
				default: _texto_regalo = "100 Diamonds"; break;
			}
	        break;
		case "Spin":
	        switch(os_get_language()) {
				case "es": _texto_regalo = "Girar"; break;
				case "pt": _texto_regalo = "Rodar"; break;
				case "it": _texto_regalo = "Girare"; break;
				case "ru": draw_set_font(fnt_grande_ru) _texto_regalo = "Вращение"; break;
				default: _texto_regalo = "Spin"; break;
			}
	        break;	
		case "Turning":
	        switch(os_get_language()) {
				case "es": _texto_regalo = "Girando"; break;
				case "pt": _texto_regalo = "Girando"; break;
				case "it": _texto_regalo = "Girando"; break;
				case "ru": draw_set_font(fnt_grande_ru) _texto_regalo = "Превращение"; break;
				default: _texto_regalo = "Turning"; break;
			}
	        break;		
		default:
			switch(os_get_language()) {
				case "es": _texto_regalo = "10 Diamantes"; break;
				case "pt": _texto_regalo = "10 diamantes"; break;
				case "it": _texto_regalo = "10 diamanti"; break;
				case "ru": draw_set_font(fnt_grande_ru) _texto_regalo = "10 бриллиантов"; break;
				default: _texto_regalo = "10 Diamonds"; break;
			}
			break;
	}
	
	return _texto_regalo;
}