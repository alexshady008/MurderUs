function scr_popup_salir_juego(objContr) {
	switch (os_get_language())
	{
		case "es":  scr_crear_popup_pregunta(objContr,"msgChico","¿Está seguro que quiere salir del juego?")  break;
		case "pt":  scr_crear_popup_pregunta(objContr,"msgChico","Tem certeza de que deseja sair do jogo?")  break;
		case "it":  scr_crear_popup_pregunta(objContr,"msgChico","Sei sicuro di voler chiudere il gioco?")  break;
		case "ru":  scr_crear_popup_pregunta(objContr,"msgChico","Вы уверены, что хотите выйти из игры?")  break;
		default:  scr_crear_popup_pregunta(objContr,"msgChico","Are you sure you want to quit the game?")  break;
	} 


}
