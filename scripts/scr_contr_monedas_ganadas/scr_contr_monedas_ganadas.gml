// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_monedas_ganadas(monedas_a_ganar){
	//global.monedas += monedas_a_ganar
	var monedas_ganadas = global.monedas + monedas_a_ganar
	ini_open("comandos.ini")
	ini_write_real("jugadorDatos","monedas",monedas_ganadas)
	ini_close()
	
	/*switch (os_get_language())
	{
		case "es": scr_crear_popup_mensaje("msgChico","¡Obtuviste " +string(monedas_a_ganar)+ " monedas!")  break;
		case "pt": scr_crear_popup_mensaje("msgChico","¡Você tem " +string(monedas_a_ganar)+ " moedas!")  break;
		case "it": scr_crear_popup_mensaje("msgChico","¡ Hai " +string(monedas_a_ganar)+ " monete!")  break;
		case "ru": scr_crear_popup_mensaje("msgChico","¡ Вы получили " +string(monedas_a_ganar)+ " монет!")  break;
		default: scr_crear_popup_mensaje("msgChico","You got " +string(monedas_a_ganar)+ " coins!") break;
	}*/
}