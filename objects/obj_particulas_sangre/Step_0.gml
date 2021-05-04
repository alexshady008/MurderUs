/// @description Contr la gravedad y rotacion
// Puede escribir su código en este editor

if (global.estadoJuego == "jugando"){
	if (yFinal!=noone){
		if (y<yFinal){
			//Cae
			physics_apply_force(x, y, 0, 1000)
			depth = -y
		}
		else {
			depth = global.depth_piso-1
			physics_apply_force(x, y, 0, 0)
			phy_speed_x = 0
			phy_speed_y = 0
		}
	}
}
else { instance_destroy() }