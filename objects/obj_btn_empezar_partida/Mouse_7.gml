/// @description  vuelve al menu

image_xscale = 1
image_yscale = 1

if (global.juegoListo==true and global.chat==false and global.jugabilidad==true)
{
	/// sonido del boton
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }
	
	//Comienza la partida
	scr_comienza_partida()
}