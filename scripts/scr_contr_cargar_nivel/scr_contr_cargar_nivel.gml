function scr_contr_cargar_nivel(datos) {
	var posMapa = string_pos("$",datos)
	var datosCadenas = string_delete(datos, 1, posMapa)
	//show_debug_message(datosCadenas)
	

	// Devuelve la cantidad de objetos 
	var cantidadObj = string_count("-",datosCadenas);  

	//// SI hay objetos  ///
	if ( cantidadObj > 0 ){
		
			// Recorre cada objeto y  lo crea
			for( var i=0; i<cantidadObj; i++ ){
			
			#region Divide cada objeto de la cadena
					var posFinalObj = string_pos("-",datosCadenas)
					var objeto = string_copy(datosCadenas,1,((posFinalObj)))
			#endregion
		
			#region Calcula las posiciones
					var posCatObj = string_pos("=",objeto)
					var posTipoObj = string_pos("X",objeto)
					var posXObj = string_pos("Y",objeto)
					var posYObj = string_pos("-",objeto)
			#endregion
			
			#region Crea las variables de los objetos
					//CATEGORIA
					var stringCat = string_copy(objeto,1,((posCatObj)-1))
					//stringCat = string_digits (stringTipo);
					// TIPO 
					var stringTipo = string_copy(objeto,(posCatObj+1),((posTipoObj - posCatObj)-1))
					//var stringTipo = string_copy(objeto,1,((posTipoObj)-1))
					stringTipo = string_digits (stringTipo);
					// POS X
					var stringPosX = string_copy(objeto,(posTipoObj+1),((posXObj - posTipoObj)-1))
					// POS Y
					var stringPosY = string_copy(objeto,(posXObj+1),((posYObj - posXObj)-1)) 
				
				
					// Crea las variables de los objetos
					var objCat = noone
					var objTipo = noone
					var objX = noone
					var objY = noone
				
					// Si el string copiado es un string y tiene una longitud de un numero o mas, se lo convierte en real asignandselo a su variable correspondiente
					if (is_string (stringCat) and string_length (stringCat)>=1) objCat = stringCat
					if (is_string (stringTipo) and string_length (stringTipo)>=1) objTipo = real(stringTipo)
					if (is_string (stringPosX) and string_length (stringPosX)>=1) objX = real(stringPosX)   ///Error al covertir a real
					if (is_string (stringPosY) and string_length (stringPosY)>=1) objY = real(stringPosY)
			#endregion
			
			#region Crea el obbjeto y borra readapta la cadena
					if (objCat!=noone and objTipo!=noone and objX!=noone and objY!=noone){
						scr_cargar_objetos(objCat,objTipo,objX,objY)
					}
					datosCadenas = string_delete(datosCadenas,1,posFinalObj)
			#endregion
			
			}
		
	}


}
