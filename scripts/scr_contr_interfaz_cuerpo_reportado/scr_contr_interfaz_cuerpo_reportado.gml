// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_interfaz_cuerpo_reportado(){
	// Contr la animacion del fondo del btn de emergencia
	escala_anim_reportar_cuerpo = 1
	var tiempo = contr_alarma_anim_reportar_cuerpo/global.step_delta
	if (tiempo>=1) alarm[8] = tiempo
	else alarm[8] = 1
						
	// Contr el alfa de la oscuridad y el radio de la luz 
	scr_radio_luz_inicial()
}