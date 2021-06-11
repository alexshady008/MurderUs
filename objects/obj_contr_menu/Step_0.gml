/// @description Propiedades de la pantalla
// Puede escribir su código en este editor

#region Propiedades de la camara
	global.cam_x = 0
	global.cam_y = 0
	global.cam_ancho = 1280
	global.cam_alto = 720
#endregion


#region COntr las monedas ganadas
	if (monedas_a_ganar!=0){
		if (monedas_a_ganar>global.monedas) global.monedas+=0.1
		else monedas_a_ganar = 0
	}
#endregion