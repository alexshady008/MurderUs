/// @description Va a la pantalla previa a jugar
if (global.elegir_mapa_editor){
	escala_x=1.15
	escala_y=1
	
	/// sonido
	if global.musica == true
	{ audio_play_sound(snd_boton,100,false) }

	#region Elige el tipo de mapa
		if (mapa!=noone){
			if (instance_exists(obj_contr_elegir_mapa_editor)) var nivel = obj_contr_elegir_mapa_editor.nivel_elegido 
			if (nivel!=noone){
				global.datos_nivel_pers = noone
				global.nivel_elegido = nivel
				global.mapa_elegido = mapa
				switch(mapa){
					case 1: room_goto(rm_nivel1_editor)  break
					case 2: room_goto(rm_nivel2_editor)  break
					case 3: room_goto(rm_nivel3_editor)  break
				}
				//room_goto(rm_editar_mapa)
			}
		}
	#endregion
}
