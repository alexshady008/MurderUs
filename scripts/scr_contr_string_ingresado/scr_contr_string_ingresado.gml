// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_string_ingresado(stringEntrada){
	var stringSalida = ""
	switch(os_get_language()) {
		case "ru": stringSalida = stringEntrada break;
		default: stringSalida = string_lettersdigits(stringEntrada) break;
	}
	return stringSalida
}