/// @description  vuelve al menu

image_xscale = 1
image_yscale = 1

if (global.menuBloq==false)
{
	/// sonido del boton
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }	
	
	room_goto(rm_menu)
}