/// @description Contr el transportador 
// Puede escribir su código en este editor
if (transportador!=noone and instance_exists(transportador)){
	transportador.iluminar = false
	transportador.luz = noone
	transportador.retener_personaje = false
	if (global.step_delta>1) transportador.alarm[1] = round(tiempo/global.step_delta)+1
	else transportador.alarm[1] = tiempo 
}