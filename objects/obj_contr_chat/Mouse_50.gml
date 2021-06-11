/// @description Mueve el slider
// Puede escribir su código en este editor

if (global.slider_presionado){
	var touch_posY2 = mouse_y

	if (touch_posY2!=touch_posY1){
		// Se mueve el slider hacia arriba
		if (touch_posY2<touch_posY1){
			var distancia = touch_posY1-touch_posY2
			if (contr_slider==2 or contr_slider==0) slider-=distancia
		}	
		// Se mueve el slider hacia abajo
		if (touch_posY2>touch_posY1){
			var distancia = touch_posY2-touch_posY1
			if (contr_slider==1 or contr_slider==0) slider+=distancia
		}
		touch_posY1 = touch_posY2
	}
}