/// @description Inicio del Giro
if (global.etapa_rueda = EtapasRueda.InteraccionJugador) {
	is_dragging = true;
	dragg_angle = point_direction(x, y, mouse_x, mouse_y) - image_angle;
}