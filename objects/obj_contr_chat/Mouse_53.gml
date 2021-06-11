/// @description Se prepara para mover el slider
// Puede escribir su código en este editor

if (global.chat==1 and global.cambiarVestimenta==false and global.escribiendo==false)
{
	if ((mouse_x>slider_posX1 and mouse_x<slider_posX2) 
		and (mouse_y>slider_posY1 and mouse_y<slider_posY2)) {
			global.slider_presionado = true
			touch_posY1 = mouse_y
		}
}	