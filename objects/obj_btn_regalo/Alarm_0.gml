/// @description Fecha del ultimo regalo
if (global.fecha_ultimo_regalo == 0) {
	habilitado = true;
} else {
	fecha_siguiente_regalo = date_inc_day(global.fecha_ultimo_regalo, 1);
	var fecha_actual = date_current_datetime();
	habilitado = fecha_actual >= fecha_siguiente_regalo;
}