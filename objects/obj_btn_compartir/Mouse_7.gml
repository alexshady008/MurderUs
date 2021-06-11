/// @description Va a la pantalla previa a jugar
if ( global.menuBloq == false ){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	#region Comparte
		switch(os_get_language()) {
			case "es": SHARE_text("https://play.google.com/store/apps/details?id=com.cheshirex.murderus", "Invita a tus amigos:", SHARE_ANYWHERE) break;
			case "pt": SHARE_text("https://play.google.com/store/apps/details?id=com.cheshirex.murderus", "Convide seus amigos:", SHARE_ANYWHERE) break;
			case "it": SHARE_text("https://play.google.com/store/apps/details?id=com.cheshirex.murderus", "Invita i tuoi amici:", SHARE_ANYWHERE) break;
			case "ru": SHARE_text("https://play.google.com/store/apps/details?id=com.cheshirex.murderus", "Пригласить своих друзей:", SHARE_ANYWHERE) break;
			default: SHARE_text("https://play.google.com/store/apps/details?id=com.cheshirex.murderus", "Invite your friends:", SHARE_ANYWHERE) break;
		}
	#endregion
}
