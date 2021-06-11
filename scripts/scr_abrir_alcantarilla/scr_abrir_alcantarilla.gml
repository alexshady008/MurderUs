// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_abrir_alcantarilla(){
	// Sonido
	if (global.musica) audio_play_sound(snd_abrir_alcantarilla,100,false)  
	image_index = 1
	image_speed = 0
	alarm[0] = tiempo
}