// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_popup_compra_skins() {
	switch (os_get_language())
	{
		case "es": scr_crear_popup_mensaje("msgChico","¡Gracias por la compra! ¡Desbloqueaste a todos los personajes!")  break;
		case "pt": scr_crear_popup_mensaje("msgChico","¡Obrigado pela compra! ¡ Você desbloqueou todos os personagens!")  break;
		case "it": scr_crear_popup_mensaje("msgChico","¡Grazie per l'acquisto!¡ ¡Hai sbloccato tutti i personaggi!")  break;
		case "ru": scr_crear_popup_mensaje("msgChico","Спасибо за покупку! ¡ Вы разблокировали всех персонажей!")  break;
		default: scr_crear_popup_mensaje("msgChico","Thanks for the purchase! You unlocked all skins!") break;
	}
}
