/// @desc Reducir Segundo
//if (global.ruleta_usada) {
	segundos_restantes--;

	if(segundos_restantes < 0)
	{
		segundos_restantes = 59;
		minutos_restantes--;
		if(minutos_restantes < 0)
		{
			minutos_restantes = 59
			horas_restantes--;
			if(horas_restantes < 0) horas_restantes = 23;
		}
	}

	alarm[0] = room_speed;
//}