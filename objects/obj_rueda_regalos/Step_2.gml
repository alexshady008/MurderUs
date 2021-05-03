/// @description Rotacion
if (global.etapa_rueda == EtapasRueda.Girando) {
	image_angle += rotation_speed;
	if (abs(rotation_speed) < abs(rotation_aceleration)) {
		rotation_speed = 0;
		global.etapa_rueda = EtapasRueda.AjustandoPosicion;
	} else {
		rotation_speed += rotation_aceleration;
	}
} else if (global.etapa_rueda == EtapasRueda.AjustandoPosicion) {
	var difencia_angulos = angle_difference(image_angle, angulo_destino);
	if (abs(difencia_angulos) < 1) {
		image_angle = angulo_destino;
		with (obj_contr_regalos)
			event_user(1);
	} else {
		image_angle -= 1 * sign(difencia_angulos);
	}
}