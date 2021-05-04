/// @description Dibuja las cuadriculas 
// Puede escribir su código en este editor

#region  Dibuja las cuadriculas 

	draw_set_alpha(0.75)
	draw_set_color(c_black)
	
	if (global.categoria_obj==1) var cuadricula = cuadricula_inicial
	else var cuadricula = cuadricula_inicial/2 
 
	var n;
	n=0
	repeat ceil (room_width/cuadricula)+1 {
		draw_line(n*cuadricula,0,n*cuadricula,room_height)
		n+=1
	}
 
	n=0
	repeat ceil (room_height/cuadricula)+1 {
		draw_line(0,n*cuadricula,room_width,n*cuadricula)
		n+=1
	}
 
	draw_set_alpha(1)

#endregion