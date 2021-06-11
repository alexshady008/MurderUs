/// @description Va a la pantalla previa a jugar
if (global.jugabilidad){
	escala=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }
	
	if (id_sala != noone) {
		//scr_conectar_a_sala(id_sala)
		scr_buscar_sala(id_sala)
		global.idSala = id_sala
		global.jugabilidad = false 
		obj_contr_unirse_sala.alarm[1] = 200 
	}	
	
}
