/// @description Se presiona
// Puede escribir su código en este editor
if (global.tarea_completada==false and completado==false) {
	presionado=true
	escala = 1.1
	depth = depth_inicial - 1
	if (global.musica) audio_play_sound(snd_boton,100,false) 
}	