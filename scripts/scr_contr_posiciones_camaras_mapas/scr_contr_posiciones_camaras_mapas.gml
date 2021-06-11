// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_posiciones_camaras_mapas(){
	// Mapa 1
	if (room==rm_nivel1 or room==rm_nivel1_editor) {
		#region Mapa 1
			// Pos X
			posX[0]=600 
			posX[1]=2300 
			posX[2]=1650
			posX[3]=3800
			//PosY
			posY[0]=100 
			posY[1]=1200 
			posY[2]=2500
			posY[3]=100
		#endregion
	}
	
	// Mapa 2
	else if (room==rm_nivel2 or room==rm_nivel2_editor) {
		#region Mapa 2
			// Pos X
			posX[0]=50 
			posX[1]=2800 
			posX[2]=2100
			posX[3]=3650
			//PosY
			posY[0]=1450 
			posY[1]=100 
			posY[2]=1400
			posY[3]=1400
		#endregion
	}
	
	// Mapa 3
	else if (room==rm_nivel3 or room==rm_nivel3_editor) {
		#region Mapa 3
			// Pos X
			posX[0]=1600 
			posX[1]=200 
			posX[2]=3450
			posX[3]=2200
			//PosY
			posY[0]=150 
			posY[1]=1550 
			posY[2]=3850
			posY[3]=4200
		#endregion
	}
}