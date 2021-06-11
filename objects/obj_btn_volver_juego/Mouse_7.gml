/// @description  vuelve al menu

image_xscale = 1
image_yscale = 1

if (global.chat==false and global.saboteando == false and global.jugabilidad==true) 
{
	/// sonido del boton
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }
	
	if (global.modo_jugabilidad==1){
		if (room==rm_lobby) obj_contr_sala_online.alarm[11]=1
		else scr_popup_salir_juego(obj_contr_juego_online)
	}
	else {
		if (global.modo_jugabilidad_offline==1) room_goto(rm_config_practicar)
		else if (global.modo_jugabilidad_offline==2) room_goto(rm_config_supervivencia)
	}
	
}