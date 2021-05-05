/// @description Suelta la rueda
if (global.etapa_rueda = EtapasRueda.InteraccionJugador && is_dragging) {
	is_dragging = false;
	//Se calcula la velocidad que le da el jugador
	rotation_speed = point_direction(x, y, mouse_x, mouse_y) - dragg_angle - previous_angle;
	rotation_aceleration = -sign(rotation_speed);
	//Se reajusta esa velocidad para que de 5 vueltas y quede en el regalo elegido programado al inicio del room
	var vueltas = 5;
	var angulo_final = vueltas * sign(rotation_speed) * 360 + angulo_destino - image_angle;
	rotation_speed = sign(rotation_speed) * sqrt(-2 * rotation_aceleration * angulo_final);
	global.etapa_rueda = EtapasRueda.Girando;
}