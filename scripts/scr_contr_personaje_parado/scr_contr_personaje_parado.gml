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


	/*
#region Parado Horizontal

		// Derecha 
		if (dirAnterior>=0 and dirAnterior<20) or (dirAnterior>340 and dirAnterior<=360) {
			scr_sprite_parado_personajes("deCostado_hor")
			image_xscale = -1
		}	
		// Izquierda
		if (dirAnterior>160 and dirAnterior<200) {
			scr_sprite_parado_personajes("deCostado_hor")
			image_xscale = 1
		}

#endregion
		
#region Parado Diagonal

		// Arriba y derecha
		if (dirAnterior>=20 and dirAnterior<=70)  {
			scr_sprite_parado_personajes("deAtras_diag")
			image_xscale = 1
		}	
		// Arriba e izquierda
		if (dirAnterior>=110 and dirAnterior<=160) {
			scr_sprite_parado_personajes("deAtras_diag")
			image_xscale = -1
		}
		// Abajo y derecha
		if (dirAnterior>=290 and dirAnterior<=340)  {
			scr_sprite_parado_personajes("deFrente_diag")
			image_xscale = -1
		}
		// Abajo e izquierda
		if (dirAnterior>=200 and dirAnterior<=250) {
			scr_sprite_parado_personajes("deFrente_diag")
			image_xscale = 1
		}
	
#endregion
		
#region Parado Vertical

		// Arriba 
		if (dirAnterior>70 and dirAnterior<110)  {
			scr_sprite_parado_personajes("deAtras_vert")
			image_xscale = 1
		}	
		// Abajo
		if (dirAnterior>250 and dirAnterior<290) {
			scr_sprite_parado_personajes("deFrente_vert")
			image_xscale = 1
		}
	
#endregion
				


/* end scr_contr_personaje_parado */
}
