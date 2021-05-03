/// @description Tiempo de espera
if (!habilitado) {
	var fecha_actual = date_current_datetime();
	var segundos = date_second_span(fecha_siguiente_regalo, fecha_actual);
	timer_string = scr_time_string(segundos);
	if (fecha_actual >= fecha_siguiente_regalo)
		habilitado = true;
}