/// @description Contr la gravedad y rotacion
// Puede escribir su código en este editor


if (global.estadoJuego == "jugando"){
	if (yFinal!=noone){
		if (y<yFinal){
			depth = -y
			/// Rota
			phy_rotation += 10
			image_angle += 10
		
			//Cae
			physics_apply_force(x, y, 0, 4000)
		}
		else {
			depth = global.depth_piso-1
			phy_fixed_rotation = true
			physics_apply_force(x, y, 0, 0)
			phy_speed_x = 0
			phy_speed_y = 0
		}
	}
}
else { instance_destroy() }