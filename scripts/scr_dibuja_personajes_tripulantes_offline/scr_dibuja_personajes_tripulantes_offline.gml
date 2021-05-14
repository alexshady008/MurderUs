// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibuja_personajes_tripulantes_offline(posY){
	var escala = 1.5
	var cant_jugadores = 5
	var n = 150
			
	#region COntr la pos X
		var cant_por_fila = 5
		//var posX_Inicial_jug = posX-(n*(cant_por_fila/2))
		var posX_Inicial_jug = cam_x+340
		var posX_jug = posX_Inicial_jug
	#endregion
			
	#region Contr la pos Y
		var posY_jug = posY+350
	#endregion
			
	#region Dibuja a todos los tripulantes
		for (i=0 ; i<cant_jugadores ; i++){
			var jugador_color = scr_crear_color(i+2)
			scr_dibuja_jugador_parado(1,posX_jug,posY_jug,1, jugador_color)
			posX_jug += n
		}
	#endregion
			
	#region Dibuja al personaje
		var posX_jug = posX_Inicial_jug + (n*2)
		var escala = 1.5
		if (global.skinElegido==1) var jugador_color = scr_crear_color(1)
		else var jugador_color = c_white
		scr_dibuja_jugador_parado(global.skinElegido,posX_jug,posY_jug,1, jugador_color)
		scr_dibuja_prenda_jug_parado(global.prendaElegida,0,posX_jug,posY_jug,1,escala,escala)
		scr_dibuja_accesorio_jug(global.accesorioElegido,posX_jug,posY_jug,1,escala,escala)
		scr_dibuja_sombrero_jug(global.sombreroElegido,posX_jug,posY_jug,1,escala,escala)
		scr_dibuja_mascota_parada(global.mascotaElegida,posX_jug,posY_jug,1,escala,1)
	#endregion
	
	//show_debug_message("Se crean los tripulantes")
}