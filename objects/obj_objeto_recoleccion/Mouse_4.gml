/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (oculto==false and seleccionado==false) {
	escala=1
	seleccionado = true
	obj_tareas_recoleccion.objetos_recogidos++
	if (global.musica) audio_play_sound(snd_swosh,100,false) 
	instance_destroy()
}	