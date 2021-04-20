function scr_contr_personaje_corriendo() {
#region detiene su movimiento
	/*if (jugador==true and direccion!=dirAnterior) {
		if (phy_speed_x != 0)  phy_speed_x = 0;
		if (phy_speed_y != 0)  phy_speed_y = 0;
	}*/
#endregion


#region contr sprite
		moviendose = true
		if !(muerto) scr_sprite_corriendo_personajes()
		else scr_sprite_volando_personajes()
	
		// Derecha 
		if (direccion>=0 and direccion<90) or (direccion>=270 and direccion<=360) {
			image_xscale = -1
		}	
		// Izquierda
		if (direccion>=90 and direccion<270) {
			image_xscale = 1
		}
#endregion


#region Contr su movimiento
		if (jugador)
		{
		
	#region Corre Horizontal
			// Derecha 
			if (direccion>=0 and direccion<20) or (direccion>340 and direccion<=360) {
				physics_apply_force(x, y, velFuerza, 0)
			}	
			// Izquierda
			if (direccion>160 and direccion<200) {
				physics_apply_force(x, y, -velFuerza, 0)
			}
	#endregion
		
	#region Corre Diagonal

			// Arriba y derecha
			if (direccion>=20 and direccion<=70)  {
				physics_apply_force(x, y, velFuerza2, -velFuerza2)
			}	
			// Arriba e izquierda
			if (direccion>=110 and direccion<=160) {
				physics_apply_force(x, y, -velFuerza2, -velFuerza2)
			}
			// Abajo y derecha
			if (direccion>=290 and direccion<=340)  {
				physics_apply_force(x, y, velFuerza2, velFuerza2)
			}
			// Abajo e izquierda
			if (direccion>=200 and direccion<=250) {
				physics_apply_force(x, y, -velFuerza2, velFuerza2)
			}
	
	#endregion
		
	#region Corre Vertical

			// Arriba 
			if (direccion>70 and direccion<110)  {
				physics_apply_force(x, y, 0, -velFuerza)
			}	
			// Abajo
			if (direccion>250 and direccion<290) {
				physics_apply_force(x, y, 0, velFuerza)
			}
	
	#endregion
	
		}
#endregion


	image_speed = 0.65*global.step_delta
	dirAnterior = direccion





}
