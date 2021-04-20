/// @description Se apaga la luz
// Puede escribir su código en este editor
if !(iluminando){
	if (index!=0){
		index--
		if (global.step_delta>1) alarm[2] = round(tiempo/global.step_delta)+1
		else alarm[2] = tiempo
	}
	else {
		if (global.step_delta>1) alarm[3] = round(tiempo/global.step_delta)+1
		else alarm[3] = tiempo
	}
}