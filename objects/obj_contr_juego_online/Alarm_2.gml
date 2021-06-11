/// @description Contr el tiempo de espera para asesinar
// Puede escribir su código en este editor

if (global.usar_btn_emergencia>0) global.usar_btn_emergencia--
if (global.asesinar>0) {
	global.asesinar--
	
	if (global.step_delta>=1) alarm[2] = room_speed/global.step_delta;
	else alarm[2] = room_speed;
}