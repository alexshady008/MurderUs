/// @description Arrastrando
if (global.etapa_rueda = EtapasRueda.InteraccionJugador && is_dragging) {
	image_angle = point_direction(x, y, mouse_x, mouse_y) - dragg_angle;
}