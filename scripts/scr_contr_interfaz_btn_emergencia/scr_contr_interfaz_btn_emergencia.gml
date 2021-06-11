// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_interfaz_btn_emergencia(){
	// Contr la animacion del fondo del btn de emergencia
	index_anim_btn_emergencia = 0
	var tiempo = contr_alarma_anim_btn_emergencia/global.step_delta
	if (tiempo>=1) alarm[3] = tiempo
	else alarm[3] = 1
						
	// Contr los objetos a crearse cuando se presiona el btn de emergencia
	instance_create_layer(global.cam_x+640,global.cam_y+global.cam_alto,"Discusion",obj_mano_btn_emergencia)
	var exclamacion1 = instance_create_layer(global.cam_x+100,(global.cam_y+global.cam_alto)-175,"Discusion",obj_signos_exclamacion)
	exclamacion1.contr_escala_y = true
	var exclamacion2 = instance_create_layer((global.cam_x+global.cam_ancho)-100,(global.cam_y+global.cam_alto)-175,"Discusion",obj_signos_exclamacion)
	exclamacion2.contr_escala_y = false
						
	// Contr el alfa de la oscuridad y el radio de la luz 
	scr_radio_luz_inicial()
}