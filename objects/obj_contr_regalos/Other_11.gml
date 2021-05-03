/// @description Mostrar la recompensa
with (obj_regalo_obtenido) {
	sprite_index = other.sprite_escogido;
	//Activa el movimiento
	event_user(0);
}
global.etapa_rueda = EtapasRueda.MostrandoRecomensa;