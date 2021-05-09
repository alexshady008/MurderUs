function scr_contr_personaje_parado() {
#region contr sprite
		moviendose = false
	
		if !(muerto) scr_sprite_parado_personajes()
		else scr_sprite_volando_personajes()
	
		// Derecha 
		if (dirAnterior>=0 and dirAnterior<90) or (dirAnterior>=270 and dirAnterior<=360) {
			image_xscale = -1
		}	
		// Izquierda
		if (dirAnterior>=90 and dirAnterior<270) {
			image_xscale = 1
		}
#endregion


#region contr su movimiento
	if (jugador) {
		if (phy_speed_x != 0)  phy_speed_x = 0;
		if (phy_speed_y != 0)  phy_speed_y = 0;
	}
#endregion


	image_speed = 0.3*global.step_delta

}
