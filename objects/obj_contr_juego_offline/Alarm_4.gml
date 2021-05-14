/// @description SE FINALIZA EL JUEGO
// Puede escribir su código en este editor
//if (global.veces_jugado_offline%2 == 0) scr_publicidad()

#region contr las monedas ganadas
	if (global.modo_jugabilidad_offline>1){
		if (global.estadoJuego = "juego_terminado_tripulantes_ganadores"){
			if (global.jugador_tipo == "TRIPULANTE") global.contr_monedas_ganadas = 4
			//else global.contr_monedas_ganadas = 4
		}
		else if (global.estadoJuego = "juego_terminado_impostores_ganadores"){
			if (global.jugador_tipo == "IMPOSTOR") global.contr_monedas_ganadas = 4
			//else global.contr_monedas_ganadas = 3
		}
	}
#endregion

scr_publicidad()

if (ds_exists(global.lista_tareas,ds_type_list)) ds_list_destroy(global.lista_tareas) 
if (ds_exists(global.nombre_habitaciones,ds_type_list)) ds_list_destroy(global.nombre_habitaciones)
if (instance_exists(obj_contr_efectos)) instance_destroy(obj_contr_efectos)

global.veces_jugado_offline++
//if (global.modo_jugabilidad_offline==1) room_goto(rm_config_practicar)
//else if (global.modo_jugabilidad_offline==2) room_goto(rm_config_supervivencia)
room_goto(rm_menu)
