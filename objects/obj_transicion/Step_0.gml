/// @description Contr el alfa
// Puede escribir su código en este editor

#region Disminuye el alfa
	if (disminuir_alfa){
		if (global.alfa_transicion>0){
			if (n_transicion==1) global.alfa_transicion -= (alfa_transicion_1*global.step_delta)
			else global.alfa_transicion -= (alfa_transicion_2*global.step_delta)
		}
		else {
			disminuir_alfa = false
		}
	}
#endregion


#region Aumenta el alfa
	if (aumentar_alfa){
		if (global.alfa_transicion<1){
			if (n_transicion==1) global.alfa_transicion += (alfa_transicion_1*global.step_delta)
			else global.alfa_transicion += (alfa_transicion_2*global.step_delta)
		}
		else {
			aumentar_alfa = false
			disminuir_alfa = true
			if (instance_exists(obj_contr_juego_online)) obj_contr_juego_online.mostrarPantallaFinal = true
			if (instance_exists(obj_contr_juego_offline)) obj_contr_juego_offline.mostrarPantallaFinal = true
			
			#region Contr los efectos
				if (global.estadoJuego == "juego_terminado_tripulantes_ganadores"){
					var efecto = instance_create_layer(0,0,"Transicion",obj_contr_efectos)
					efecto.efecto = 1
					efecto.alarm[0] = 1
				}
				else if (global.estadoJuego == "juego_terminado_impostores_ganadores"){
					var efecto = instance_create_layer(0,0,"Transicion",obj_contr_efectos)
					efecto.efecto = 2
					efecto.alarm[0] = 1
				}
			#endregion
		}
	}
#endregion