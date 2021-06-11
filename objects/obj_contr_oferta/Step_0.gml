/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (global.regaloSkins){
	
#region Contr si se habilita la ruleta
	if (global.ruleta_usada)
	{
		if (date_compare_datetime(date_create_datetime(ruleta_year, ruleta_mes, ruleta_dia, ruleta_horas, ruleta_minutos, ruleta_segundos), date_current_datetime()) < 0)
		{	
			ini_open("comandos.ini");
			ini_write_real("jugadorDatos", "ruleta_usada", false);
			ini_close();
			global.ruleta_usada = false;
		}
	}
#endregion

}