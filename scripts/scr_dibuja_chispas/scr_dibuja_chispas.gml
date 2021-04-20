// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibuja_chispas(){
	//var contr_dibujar = irandom(3)
	var contr_dibujar = 0
	
	if (contr_dibujar==0){
		//show_debug_message("Dibuja efecto 2")
		//Posiciones
		var posX1 = cam_x+111
		var posX2 = cam_x+1150
		var posY = cam_y+136
	
		// humo
		var colorHumo = c_silver 
		effect_create_above(ef_smokeup, posX1 ,posY , irandom_range(1,3), colorHumo)
		effect_create_above (ef_smokeup, posX2 , posY, irandom_range(1,3), colorHumo)
	
		// CHispa
		var colorChispa = c_white 
		effect_create_above(ef_firework,posX1 ,posY , irandom_range(1,3), colorChispa)
		effect_create_above (ef_firework,posX2 , posY, irandom_range(1,3), colorChispa)
	
		var tiempo_crearse = irandom_range(10,20)
		var tiempo = tiempo_crearse/global.step_delta
		if (tiempo>=1) alarm[0] = tiempo  
		else alarm[0] = 1 
	}
}