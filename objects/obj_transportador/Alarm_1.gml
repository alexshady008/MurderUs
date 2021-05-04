/// @description Se apaga
// Puede escribir su código en este editor
if (encendido==true and iluminar==false){
	if (index!=0){
		retener_personaje = false
		index--
		if (global.step_delta>1) alarm[1] = round(tiempo/global.step_delta)+1
		else alarm[1] = tiempo
	}
	else {
		if (global.step_delta>1) alarm[2] = round(tiempo/global.step_delta)+1
		else alarm[2] = tiempo
	}
}