// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibuja_personajes_raza2_offline(posY){
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
			
		#region Dibuja a todos los pers de la raza
			for (i=0 ; i<cant_jugadores ; i++){
				scr_dibuja_jugador_parado(34,posX_jug,posY_jug,1, c_white)
				posX_jug += n
			}
		#endregion
			
		#region Dibuja al personaje
			var posX_jug = posX_Inicial_jug + (n*2)
			scr_dibuja_jugador_parado(34,posX_jug,posY_jug,1, c_white)
			scr_dibuja_mascota_parada(global.mascotaElegida,posX_jug,posY_jug,1,escala,1)
		#endregion
}