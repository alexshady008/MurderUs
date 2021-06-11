/// @description Elimina los botones y reinicia variables
// Puede escribir su código en este editor

if !(juego_bloqueado) {
	//global.jugabilidad = true
	obj_contr_asincrono.alarm[0] = 1
	global.menuBloq = false
}

global.popup = false


// Elimina los botones de acciones
if (btn_aceptar != noone){
	if instance_exists(btn_aceptar){
		instance_destroy(btn_aceptar)
	}
}
if (btn_si != noone){
	if instance_exists(btn_si){
		instance_destroy(btn_si)
	}
}
if (btn_no != noone){
	if instance_exists(btn_no){
		instance_destroy(btn_no)
	}
}