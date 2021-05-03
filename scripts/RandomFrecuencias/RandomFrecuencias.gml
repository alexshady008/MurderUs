function RandomFrecuencias() constructor {
	contador = 0;
	total = 0;
	frecuencias = ds_list_create();
	static AgregarFrecuencia = function(_valor, _frecuencia) {
		//La frecuencia debe ser un numero positivo
		if (_frecuencia < 0)
			_frecuencia = abs(_frecuencia);
		else if (_frecuencia == 0)
			_frecuencia = 1;
		ds_list_add(frecuencias, new Frecuencia(_valor, _frecuencia));
		total += _frecuencia;
		contador++;
	};
	static ValorRandom = function() {
		//Si no hay elementos, devuelve "undefined"
		if (contador == 0)
			return undefined;
		//Si hay 1 solo elemento, devuelve el valor de ese elemento
		if (contador == 1)
			return frecuencias[| 0].valor;
		//Se toma un valor random entre cero y el total de las frecuencias
		var _eleccion = irandom(total);
		//Luego se revisa cada frecuencia para ver a cual corresponde
		var _acumulado = 0;
		for (var i = 0; i < contador; i++) {
			var _frec = frecuencias[| i];
			_acumulado += _frec.frecuencia;
			if (_eleccion <= _acumulado)
				return _frec.valor;
		}
		//En el caso de que llegase a fallar el calculo, se retorna el ultimo valor
		return frecuencias[| contador - 1].valor;
	};
	static Contar = function() {
		return contador;
	};
	static Destruir = function() {
		ds_list_destroy(frecuencias);
	};
}

///@function Frecuencia(valor, frecuencia);
/// @param {cualquiera} valor    es el valor retornado luego de procesar el random
/// @param {entero} frecuencia    es un numero entero que indica su frecuencia
function Frecuencia(_valor, _frecuencia) constructor {
	valor = _valor;
	frecuencia = _frecuencia;
}