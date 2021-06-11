function JugLerp(argument0, argument1, argument2) {
	var val1 = argument0
	var val2 = argument1
	var prom = argument2
	var __prom = prom

	//Si el Promedio no es un real lo transforma a real
	if ( !is_real(__prom) ){
		__prom = real(prom)
	}

	//retorna un valor entre la diferencia de los dos val dividido por el promedio
	return fixed(( ( val2 - val1 ) / __prom ), 3 )


}
