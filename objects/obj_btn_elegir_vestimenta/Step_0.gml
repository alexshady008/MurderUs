/// @description Contr el tipo de cada boton
// Puede escribir su código en este editor

if (global.elegir_tipo_vestimenta!=0){
	if (tipo!=0){
		if (global.seccion_vestimenta == 0) tipo = tipo_inicial
		else tipo = (tipo_inicial + (global.max_botones*global.seccion_vestimenta))-1
		//else tipo = (tipo_inicial + (global.max_botones*global.seccion_vestimenta))-(global.max_seccion_vestimenta)
	}
}
else {
	tipo = (tipo_inicial + (global.max_botones*global.seccion_vestimenta))
}

