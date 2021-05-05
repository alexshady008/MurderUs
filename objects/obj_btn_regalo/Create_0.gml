/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

/// variables
escala=1

ini_open("comandos.ini");

var fecha_actual = date_current_datetime();

ruleta_usada = ini_read_real("jugadorDatos", "ruleta_usada", false);
ruleta_year = ini_read_real("jugadorDatos", "ruleta_year", date_get_year(fecha_actual));
ruleta_mes = ini_read_real("jugadorDatos", "ruleta_mes", date_get_month(fecha_actual));
ruleta_dia = ini_read_real("jugadorDatos", "ruleta_dia", date_get_day(fecha_actual));
ruleta_horas = ini_read_real("jugadorDatos", "ruleta_horas", date_get_hour(fecha_actual));
ruleta_minutos = ini_read_real("jugadorDatos", "ruleta_minutos", date_get_minute(fecha_actual));
ruleta_segundos = ini_read_real("jugadorDatos", "ruleta_segundos", date_get_second(fecha_actual));

segundos_de_diferencia = floor(date_second_span(date_create_datetime(ruleta_year, ruleta_mes, ruleta_dia, ruleta_horas, ruleta_minutos, ruleta_segundos), date_current_datetime()));
minutos_de_diferencia = floor(date_minute_span(date_create_datetime(ruleta_year, ruleta_mes, ruleta_dia, ruleta_horas, ruleta_minutos, ruleta_segundos), date_current_datetime()));

horas_restantes = floor(minutos_de_diferencia / 60);
minutos_restantes = minutos_de_diferencia - (horas_restantes * 60);
segundos_restantes = (segundos_de_diferencia - ((horas_restantes * 60) * 60)) - minutos_restantes * 60;

alarm[0] = room_speed;

if (ruleta_usada)
{
	if (date_compare_datetime(date_create_datetime(ruleta_year, ruleta_mes, ruleta_dia, ruleta_horas, ruleta_minutos, ruleta_segundos), date_current_datetime()) < 0)
	{
		ini_write_real("jugadorDatos", "ruleta_usada", false);
		ruleta_usada = false;
	}
}
ini_close();
