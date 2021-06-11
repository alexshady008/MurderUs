function scr_popup_desconexion_sin_jugadores() {
	switch (os_get_language())
	{
		case "es": scr_crear_popup_mensaje("msgChico","Juego desconectado por desconexion de los jugadores!")  break;
		case "pt": scr_crear_popup_mensaje("msgChico","Jogo desconectado devido à desconexão do jogador!")  break;
		case "it": scr_crear_popup_mensaje("msgChico","Gioco disconnesso a causa della disconnessione del giocatore!")  break;
		case "ru": scr_crear_popup_mensaje("msgChico","Игра отключена из-за отключения игрока!")  break;
		default: scr_crear_popup_mensaje("msgChico","Game disconnected due to player disconnection!") break;
	}


}
