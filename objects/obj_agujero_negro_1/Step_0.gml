/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

#region Comprueba la colision con algun personaje
	if (activado){
		var col_personaje = instance_position(x,y,obj_personaje)
		if (col_personaje!=noone and instance_exists(col_personaje)) {
			var agujero_negro_cercano = instance_nearest(x,y,obj_agujero_negro_2)
			if (agujero_negro_cercano!=noone and instance_exists(agujero_negro_cercano)){
				col_personaje.phy_position_x = agujero_negro_cercano.x
				col_personaje.phy_position_y = agujero_negro_cercano.y
				activado = false
				alarm[0] = 50
				agujero_negro_cercano.activado = false
				agujero_negro_cercano.alarm[0] = 50
			}
		}
	}
#endregion


#region Contr la rotacion
	rotacion += 20
#endregion