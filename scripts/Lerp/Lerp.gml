function Lerp(argument0, argument1, argument2) {
	var val1 = argument0
	var val2 = argument1
	var prom = argument2
	var __prom = prom

	// Comprueba si el tiempo es real, si no lo es lo convierte a numero real
	if ( !is_real(__prom) ){
		__prom = real(prom)
	}

	// El tiempo es igual a un valor entre 0 y 1
	__prom = fixed(max( 0,min(1,__prom) ),3)

	// Retorna un valor interpolado entre en val 1 y el val 2
	return fixed(( val1 + __prom * ( val2 - val1 ) ), 3 )


}
