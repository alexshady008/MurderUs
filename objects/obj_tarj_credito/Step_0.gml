/// @description Controla cuando se mueve al ser presionado
// Puede escribir su código en este editor

if (presionado)
{
	x = mouse_x
	if (instance_exists(obj_postner_superior)) y = median( y_inicial, mouse_y, obj_postner_superior.y+70 );  
	else y = mouse_y
	
	var inst_col = instance_place(x,y,obj_postner_superior)
	
	if (inst_col!=noone and completado==false) {
		if !(deslizando){
			//190 and 175
			if ((x+100>=obj_postner_superior.x-210) and (x+100<=obj_postner_superior.x-170)) deslizando=true
		}
		else {
			if (x-100>=obj_postner_superior.x+170) {
				completado=true
				obj_postner_superior.completado=true
			}	
		}
	}
}
else {
	if !(completado) {
		if point_distance(x,y,x_inicial,y_inicial)>=50 move_towards_point(x_inicial, y_inicial, vel)
		else speed = 0
	}
}
