// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_popup_compra_monedas(argument0) {
	var cantMonedas = argument0

	switch (os_get_language())
	{
		case "es": scr_crear_popup_mensaje("msgChico","¡Gracias por la compra! ¡Obtuviste " +string(cantMonedas)+ " monedas!")  break;
		case "pt": scr_crear_popup_mensaje("msgChico","¡Obrigado pela compra! ¡Você tem " +string(cantMonedas)+ " moedas!")  break;
		case "it": scr_crear_popup_mensaje("msgChico","¡Grazie per l'acquisto!¡ Hai " +string(cantMonedas)+ " monete!")  break;
		case "ru": scr_crear_popup_mensaje("msgChico","¡Спасибо за покупку! ¡ Вы получили " +string(cantMonedas)+ " монет!")  break;
		default: scr_crear_popup_mensaje("msgChico","Thanks for the purchase! You got " +string(cantMonedas)+ " coins!") break;
	}


}
