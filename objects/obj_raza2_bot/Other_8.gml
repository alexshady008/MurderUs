/// @description Vuelve a activr su path
// Puede escribir su código en este editor




if (moverse_alcantarilla){
	alcantarilla = instance_nearest(x,y,obj_agujero)
	if (point_distance(x,y,alcantarilla.x,alcantarilla.y) <= dist_alcantarilla) {
		path_activado = false
		alarm[1] = irandom_range(100,400)
		escondido = true
		//with(alcantarilla) scr_abrir_alcantarilla()
		with(alcantarilla) scr_abrir_alcantarilla_bot(snd_abrir_alcantarilla)
	}
}
else {
	alcantarilla = noone
}