function scr_contr_servidor_cercano() {
	switch(os_get_language()){
		case "es":
			var region = os_get_region()
			if (region=="ES") global.ipServidor = global.servidorEuropa
			else {
				global.ipServidor = global.servidorBrasil
				//scr_comprobar_servidor_mas_cercano(global.servidorBrasil)
				//scr_comprobar_servidor_mas_cercano(global.servidorUSA)
			}
			//global.ipServidor = global.servidorBrasil 
		break;
		case "pt":
			var region = os_get_region()
			if (region=="BR") global.ipServidor = global.servidorBrasil
			else if (region=="PT") global.ipServidor = global.servidorEuropa 
			//else global.ipServidor = global.servidorBrasil 
			else {
				//scr_comprobar_servidor_mas_cercano(global.servidorUSA)  //
				scr_comprobar_servidor_mas_cercano(global.servidorBrasil)
				scr_comprobar_servidor_mas_cercano(global.servidorEuropa)
			}
		break;
		case "ru": global.ipServidor = global.servidorEuropa break;
		case "fr": global.ipServidor = global.servidorEuropa break;
		case "it": global.ipServidor = global.servidorEuropa break;
		case "en":
			var region = os_get_region()
			if (region=="US" or region=="CA") global.ipServidor = global.servidorBrasil    //global.servidorUSA
			else {
				//scr_comprobar_servidor_mas_cercano(global.servidorUSA)  //
				scr_comprobar_servidor_mas_cercano(global.servidorBrasil)
				scr_comprobar_servidor_mas_cercano(global.servidorEuropa)
			}
		break;
		default:
			scr_comprobar_servidor_mas_cercano(global.servidorBrasil)
			//scr_comprobar_servidor_mas_cercano(global.servidor2Brasil)
			//scr_comprobar_servidor_mas_cercano(global.servidorUSA)
			scr_comprobar_servidor_mas_cercano(global.servidorEuropa)
		break
	}


}
