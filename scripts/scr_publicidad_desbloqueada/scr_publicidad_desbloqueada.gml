// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_publicidad_desbloqueada(tipo){
	global.publicidad = false
	ini_open("comandos.ini")
	ini_write_real("jugadorDatos","publicidad",false)
	ini_close()
				
	switch(tipo){
		case 1: 
			switch (os_get_language())
			{
				case "es": scr_crear_popup_mensaje("msgChico","¡Gracias por la compra! ¡Eliminaste los anuncios! ")  break;
				case "pt": scr_crear_popup_mensaje("msgChico","¡Obrigado pela compra! ¡Você removeu os anúncios! ")  break;
				case "it": scr_crear_popup_mensaje("msgChico","¡Grazie per l'acquisto! ¡ Hai rimosso gli annunci! ")  break;
				case "ru": scr_crear_popup_mensaje("msgChico","Спасибо за покупку! ¡Вы удалили рекламу!")  break;
				default: scr_crear_popup_mensaje("msgChico","Thanks for the purchase! Removed the ads!") break;
			}
		break
		
		case 2: 
			switch (os_get_language())
			{
				case "es": scr_crear_popup_mensaje("msgChico","¡Gracias por la compra! ¡Obtuviste " +string(global.cant_monedas[4])+ " monedas y eliminaste los anuncios!")  break;
				case "pt": scr_crear_popup_mensaje("msgChico","¡Obrigado pela compra! ¡Você recebeu " +string(global.cant_monedas[4])+ " moedas e removeu os anúncios!")  break;
				case "it": scr_crear_popup_mensaje("msgChico","¡ Grazie per l'acquisto! ¡Hai ottenuto  " +string(global.cant_monedas[4])+ " monete e rimosso le pubblicità!")  break;
				case "ru": scr_crear_popup_mensaje("msgChico","Спасибо за покупку! ¡Вы получили  " +string(global.cant_monedas[4])+ " монет и удалили ")  break;
				default: scr_crear_popup_mensaje("msgChico","Thanks for the purchase! You got " +string(global.cant_monedas[4])+ " coins and removed the ads!!") break;
			}
		break
		
		case 3: 
			switch (os_get_language())
			{
				case "es": scr_crear_popup_mensaje("msgChico","¡Gracias por la compra! ¡Compraste la Super Oferta! ")  break;
				case "pt": scr_crear_popup_mensaje("msgChico","¡Obrigado pela compra! Você comprou a Super Oferta! ")  break;
				case "it": scr_crear_popup_mensaje("msgChico","¡Grazie per l'acquisto! Hai acquistato la Super Offerta! ")  break;
				case "ru": scr_crear_popup_mensaje("msgChico","Спасибо за покупку! Вы купили Супер предложение!")  break;
				default: scr_crear_popup_mensaje("msgChico","Thanks for the purchase! You bought the Super Offer!") break;
			}
		break
	}

}