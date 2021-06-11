/// @description Detiene el sonido
// Puede escribir su código en este editor
if (global.musica) {
	if (sonido_fondo!=noone and audio_is_playing(sonido_fondo)) audio_stop_sound(sonido_fondo)
}