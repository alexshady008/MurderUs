/// @description Vuelve a activar su path
// Puede escribir su código en este editor
moverse_alcantarilla = false
escondido = false


#region Activa su alcantarilla
	if (alcantarilla!=noone and instance_exists(alcantarilla)){
		//with(alcantarilla) scr_abrir_alcantarilla()
		with(alcantarilla) scr_abrir_alcantarilla_bot(snd_abrir_alcantarilla)
	}
#endregion