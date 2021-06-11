function scr_contr_personaje_atacando(argument0) {
	var direccion = argument0
	/*

#region Ataca Horizontal
		// Derecha 
		if (direccion>=0 and direccion<20) or (direccion>340 and direccion<=360) {
			scr_sprite_atacando_personajes("deCostado_hor")
			image_xscale = -1
			if (tipo=="personaje") physics_apply_force(x, y, velFuerza, 0)
		
			// COntr el obj extra
			scr_contr_obj_extra(-90,depth+1)  //Angulo, profundidad
		}	
		// Izquierda
		if (direccion>160 and direccion<200) {
			scr_sprite_atacando_personajes("deCostado_hor")
			image_xscale = 1
			if (tipo=="personaje") physics_apply_force(x, y, -velFuerza, 0) 
		
			// COntr el obj extra
			scr_contr_obj_extra(+90,depth+1)  //Angulo, profundidad
		}
#endregion
		
#region Ataca Diagonal
		// Arriba y derecha
		if (direccion>=20 and direccion<=70)  {
			scr_sprite_atacando_personajes("deAtras_diag")
			image_xscale = 1
			if (tipo=="personaje") physics_apply_force(x, y, velFuerza2, -velFuerza2)
		
			// COntr el obj extra
			scr_contr_obj_extra(-45,depth-1)  //Angulo, profundidad
		}	
		// Arriba e izquierda
		if (direccion>=110 and direccion<=160) {
			scr_sprite_atacando_personajes("deAtras_diag")
			image_xscale = -1
			if (tipo=="personaje") physics_apply_force(x, y, -velFuerza2, -velFuerza2)
		
			// COntr el obj extra
			scr_contr_obj_extra(+45,depth-1)  //Angulo, profundidad
		}
		// Abajo y derecha
		if (direccion>=290 and direccion<=340)  {
			scr_sprite_atacando_personajes("deFrente_diag")
			image_xscale = -1
			if (tipo=="personaje") physics_apply_force(x, y, velFuerza2, velFuerza2)
		
			// COntr el obj extra
			scr_contr_obj_extra(180+45,depth+1)  //Angulo, profundidad
		}
		// Abajo e izquierda
		if (direccion>=200 and direccion<=250) {
			scr_sprite_atacando_personajes("deFrente_diag")
			image_xscale = 1
			if (tipo=="personaje") physics_apply_force(x, y, -velFuerza2, velFuerza2)
		
			// COntr el obj extra
			scr_contr_obj_extra(180-45,depth+1)  //Angulo, profundidad
		}
#endregion
		
#region Ataca Vertical
		// Arriba 
		if (direccion>70 and direccion<110)  {
			scr_sprite_atacando_personajes("deAtras_vert")
			image_xscale = 1
			if (tipo=="personaje") physics_apply_force(x, y, 0, -velFuerza)
		
			// COntr el obj extra
			scr_contr_obj_extra(0,depth-1)  //Angulo, profundidad
		}	
		// Abajo
		if (direccion>250 and direccion<290) {
			scr_sprite_atacando_personajes("deFrente_vert")
			image_xscale = 1
			if (tipo=="personaje") physics_apply_force(x, y, 0, velFuerza)
		
			// COntr el obj extra
			scr_contr_obj_extra(180,depth+1)  //Angulo, profundidad
		}
#endregion
		
	image_speed = 0.65*global.step_delta
	//contr_ataque.direccion = direccion

/* end scr_contr_personaje_atacando */
}
