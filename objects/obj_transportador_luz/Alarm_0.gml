/// @description Se enciende la luz
// Puede escribir su código en este editor
if (iluminando){
	if (index!=3) {
		index++
		if (global.step_delta>1) alarm[0] = round(tiempo/global.step_delta)+1
		else alarm[0] = tiempo
	}	
	else {
		if (global.step_delta>1) alarm[1] = round((tiempo*4)/global.step_delta)+1
		else alarm[1] = (tiempo*4)
	}
}