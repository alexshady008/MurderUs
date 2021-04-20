/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (instance_exists(obj_tareas_analisis))
{
#region Se prepara el analisis
	if (obj_tareas_analisis.preparando==true and animacion_preparando==false){
		animacion_preparando=true
		sprite_index=spr_tubos_anim
		image_speed = 0.4
		/// sonido
		if (global.musica) audio_play_sound(snd_gota_agua,100,false) 
	}
#endregion

#region Contr la mezcla del analisis
	if (obj_tareas_analisis.mezclar==true and presionado==true){
		//Mezcla hacia la derecha
		if (mouse_x>mouse_x_anterior){
			//if (global.musica) audio_play_sound(snd_swosh,100,false) 
			porc_mezcla += 1
			if (image_angle<35) image_angle+=10
		}
		 //Mezcla hacia la derecha
		else if (mouse_x<mouse_x_anterior){
			//if (global.musica) audio_play_sound(snd_swosh,100,false) 
			porc_mezcla += 1
			if (image_angle>-35) image_angle-=10
		}
		//Cambia la var mouse x anterior
		mouse_x_anterior = mouse_x
		
		#region Se finaliza la mezcla
			if (porc_mezcla>=porc_finalizar_mezcla){
				if (global.musica) audio_play_sound(snd_swosh,100,false) 
				presionado = false
				randomize()
				var signo_elegido=irandom_range(0,5)
				obj_tareas_analisis.mezclar = false
				obj_tareas_analisis.signo_elegido = signo_elegido
				image_index = signo_elegido
				image_speed = 0
			}
		#endregion
	}
	else if (obj_tareas_analisis.mezclar==false or presionado==false){
		escala = 1
		porc_mezcla = 0
		if (image_angle>0) image_angle-=1
		else if (image_angle<0) image_angle+=1
	}
#endregion
}

else {
	instance_destroy()
}

