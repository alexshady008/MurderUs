/// @description Destruye las camaras
// Puede escribir su código en este editor

//Elimina las camaras actuales
if (global.camara != noone){
	for(i=0 ; i<cant_camaras ; i++){
		camera_destroy(global.camara[i])
		view_visible[i] = false
	}
	global.camara = noone
}

//Se elimina el obj de eliminar camaras
if (instance_exists(obj_btn_eliminar_camaras)) instance_destroy(obj_btn_eliminar_camaras)

// Crea la camara del jugador
scr_crea_camara_jugador()

// REinicia variables
global.ver_camaras = false
if (destruccion_manual) global.jugabilidad = true
