/// @description Controla la escala cuando se reporta un cuerpo
// Puede escribir su código en este editor
if (global.estadoJuego == "cuerpo_reportado")
{
	if (escala_anim_reportar_cuerpo==1) escala_anim_reportar_cuerpo=1.2
	else escala_anim_reportar_cuerpo = 1
	
	var tiempo = contr_alarma_anim_reportar_cuerpo/global.step_delta
	if (tiempo>=1) alarm[8] = tiempo
	else alarm[8] = 1
}
