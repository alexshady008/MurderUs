/// @description Elimina el pop up
// Puede escribir su código en este editor


if (jugando) obj_contr_asincrono.alarm[0] = 1
global.menuBloq = false

// Elimina los botones de acciones
if (btn_aceptar != noone){
	if instance_exists(btn_aceptar){
		instance_destroy(btn_aceptar)
	}
}

// Desactiva el teclado virtual
if (keyboard_virtual_status() == true){
//if (obj_contr_asincrono.estadoTeclado=="visible") {	
	keyboard_virtual_hide()
}	

// Activa la alarma del objeto al que le pasa el string del valor
if (objAccionar !=noone and instance_exists(objAccionar)){
	objAccionar.alarm[10] = 1
	objAccionar.entradaTeclado = valor
}