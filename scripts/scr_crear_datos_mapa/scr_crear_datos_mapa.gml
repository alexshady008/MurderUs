function scr_crear_datos_mapa(lista) {
	var datosString = ""
	
	//Contr el num del mapa
	var mapa = ds_list_find_value(lista,0)
	datosString = datosString + string(mapa)
	datosString = datosString + "$"

	// COntr la categoria, el tipo y la posicion de cada objeto
	var tipo = "objCategoria"
	for(var i=1 ; i<ds_list_size(lista); i++){
		switch(tipo){
			case "objCategoria":
				var objCat = ds_list_find_value(lista,i)
				datosString = datosString + string(objCat)
				datosString = datosString + "="
				tipo = "objTipo"
			break;
			case "objTipo":
				var objTipo = ds_list_find_value(lista,i)
				datosString = datosString + string(objTipo)
				datosString = datosString + "X"
				tipo = "xPos"
			break;
			case "xPos":
				var xPos = ds_list_find_value(lista,i)
				datosString = datosString + string(xPos)
				datosString = datosString + "Y"
				tipo = "yPos"
			break;
			case "yPos":
				var yPos = ds_list_find_value(lista,i)
				datosString = datosString + string(yPos)
				datosString = datosString + "-"
				tipo = "objCategoria"
			break;
		}
	}

	//show_debug_message(datosString)
	return datosString

}
