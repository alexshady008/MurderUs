/// @description Contr la variable de iluminando
// Puede escribir su código en este editor
if (iluminando) {
	iluminando = false
	if (global.step_delta>1) alarm[2] = round(tiempo/global.step_delta)+1
	else alarm[2] = tiempo
}