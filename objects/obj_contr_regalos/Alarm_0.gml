/// @desc Regresar al menu
#region Colocar aqui la mecanica de cuando este boton esta activo o no
	ini_open("comandos.ini");
	var fecha_actual = date_current_datetime();
	fecha_actual = date_inc_day(fecha_actual, 1);
	ini_write_real("jugadorDatos", "ruleta_usada", true);
	ini_write_real("jugadorDatos", "ruleta_year", date_get_year(fecha_actual));
	ini_write_real("jugadorDatos", "ruleta_mes", date_get_month(fecha_actual));
	ini_write_real("jugadorDatos", "ruleta_dia", date_get_day(fecha_actual));
	ini_write_real("jugadorDatos", "ruleta_horas", date_get_hour(fecha_actual));
	ini_write_real("jugadorDatos", "ruleta_minutos", date_get_minute(fecha_actual));
	ini_write_real("jugadorDatos", "ruleta_segundos", date_get_second(fecha_actual));
	ini_write_real("jugadorDatos", "ruleta_usada", true);
	ini_close();
#endregion
	
room_goto(rm_menu);