/// @description Movimiento y Escala
if (global.etapa_rueda == EtapasRueda.MostrandoRecomensa) {
	if (point_distance(x, y, destino_x, destino_y) > delta_movimiento) {
		move_towards_point(destino_x, destino_y, delta_movimiento);
		escala += delta_escala;
		image_xscale = escala;
		image_yscale = escala;
	} else {
		speed = 0;
		with (obj_contr_regalos)
			event_user(2);
	}
}