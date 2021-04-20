// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibuja_personajes_ganadores(posX, posY, dist, extra){
	if (lista_id_jugadores!=noone and ds_exists(lista_id_jugadores,ds_type_list)){
			var cant_jugadores = ds_list_size(lista_id_jugadores)
					
			#region COntr la pos X
				var cant_por_fila = 5
				if (cant_jugadores<2) var posX_jug = posX
				else if (cant_jugadores==2) var posX_jug = posX-((dist/2)*(cant_jugadores/2))
				else if (cant_jugadores>2) var posX_jug = posX-(dist*(cant_por_fila/2))
			#endregion
			
			#region Contr la pos Y
				var posY_jug = posY+290
			#endregion
			
			#region Crea Variables
				var n = 150
				var nY = 130
				var posX_inicial = posX_jug
				var escala = 1.5
			#endregion
			
			#region Contr el dibujo de los personajes
			for (i=0 ; i<cant_jugadores ; i++){
				var jugador_id = real(ds_list_find_value(lista_id_jugadores,i))
				
				scr_dibuja_jugador_especifico_parado(jugador_id,posX_jug,posY_jug,escala,1,extra)

				// Contr la pos X
				posX_jug += n
				
				//Contr la pos X e Y
				if (i==4 or i==8) {
					posY_jug += nY
					if (i==4) posX_jug = posX_inicial + (n/2)
					else if (i==8) posX_jug = posX_inicial
				}
			}
			#endregion
		}
}