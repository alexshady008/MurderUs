/// @description Dibuja a la tarea en el minimap
// Puede escribir su código en este editor

// Contr la posicion
if (contr_pos==true){
	cam_x = camera_get_view_x(view_camera[0]) 
	cam_y = camera_get_view_y(view_camera[0]) 
	x = (cam_x+posX_sum) + (posX)
	y = (cam_y+posY_sum) + (posY)
}
draw_sprite_ext(sprite_index,image_index,x,y,escala,escala,0,c_white,1)

if (global.sabotear==false or global.muerto==true) draw_sprite_ext(sprite_index,image_index,x,y,escala,escala,0,c_black,0.65)