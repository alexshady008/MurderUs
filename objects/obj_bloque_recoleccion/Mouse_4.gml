/// @description Presiona el bloque
// Puede escribir su código en este editor

if (global.tarea_completada==false and seleccionado==false) {
	escala = 1.1
	presionado++
	if (global.step_delta>=1) alarm[1] = 50/global.step_delta
	else alarm[1] = 50
	
	//SI se presiona dos veces rapido, se selecciona el bloque y se crea la animacion
	if (presionado>=max_veces_presionado) {
		escala=1
		seleccionado=true
		// sonido
		if (global.musica) audio_play_sound(snd_sonido,100,false) 
	}	
}