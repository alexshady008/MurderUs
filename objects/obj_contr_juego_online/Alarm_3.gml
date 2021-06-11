/// @description Controla fondo Btn Emergencia
// Puede escribir su código en este editor
if (global.estadoJuego == "boton_emergencia_apretado")
{
	if (index_anim_btn_emergencia<3) index_anim_btn_emergencia++
	else index_anim_btn_emergencia = 0
	
	var tiempo = contr_alarma_anim_btn_emergencia/global.step_delta
	if (tiempo>=1) alarm[3] = tiempo
	else alarm[3] = 1
}
