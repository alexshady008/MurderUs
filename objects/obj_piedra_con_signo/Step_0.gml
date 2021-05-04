/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (instance_exists(obj_tareas_analisis))
{
#region Se prepara el analisis
	if (obj_tareas_analisis.preparando==true){
		obj_tareas_analisis.preparando=false
		obj_tareas_analisis.mezclar = true
		signo_elegido=noone
		// sonido
		if (global.musica) audio_play_sound(snd_swosh,100,false) 
		//Sprite
		sprite_index = spr_piedra_sucia_analisis
		image_index = 0
	}
#endregion

#region Contr la mezcla del analisis
	if (obj_tareas_analisis.mezclar==true and presionado==true){
		
		// Animacion del humo
		//if instance_exists(obj_humo_piedra) obj_humo_piedra.visible=true
		
		//Mezcla hacia la derecha
		if (mouse_x>mouse_x_anterior) {
			//if (global.musica) audio_play_sound(snd_swosh,100,false) 
			porc_mezcla += 1
			if instance_exists(obj_humo_piedra) obj_humo_piedra.visible=true
		}	
		 //Mezcla hacia la derecha
		else if (mouse_x<mouse_x_anterior) {
			//if (global.musica) audio_play_sound(snd_swosh,100,false) 
			porc_mezcla += 1
			if instance_exists(obj_humo_piedra) obj_humo_piedra.visible=true
		}	
		else {
			if instance_exists(obj_humo_piedra) obj_humo_piedra.visible=false
		}
		
		//Cambia la var mouse x anterior
		mouse_x_anterior = mouse_x
		
		#region Se finaliza la mezcla
			if (porc_mezcla>=porc_finalizar_mezcla){
				if (global.musica) audio_play_sound(snd_swosh,100,false) 
				presionado = false
				randomize()
				signo_elegido=irandom_range(0,5)
				obj_tareas_analisis.mezclar = false
				obj_tareas_analisis.signo_elegido = signo_elegido
				//Sprite
				sprite_index = spr_piedra_analisis
				image_index = 0
			}
		#endregion
	}
	else if (obj_tareas_analisis.mezclar==false or presionado==false){
		escala = 1
		porc_mezcla = 0
		if instance_exists(obj_humo_piedra) obj_humo_piedra.visible=false
	}
#endregion
}

else {
	instance_destroy()
}

