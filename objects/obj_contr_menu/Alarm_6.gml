/// @description Gestiona el tiempo restante de la ruleta
// Puede escribir su código en este editor

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

alarm[6] = room_speed;