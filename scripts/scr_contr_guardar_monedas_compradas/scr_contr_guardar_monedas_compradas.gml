// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_guardar_monedas_compradas(){
	ini_open("comandos.ini")
	ini_write_real("jugadorDatos","monedas",global.monedas)
	ini_close()
	if (global.musica==true)  audio_play_sound(snd_comenzar,100,false) 
}