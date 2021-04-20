// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cargar_obj_dormitorio(objetoTipo, X, Y){
	switch(objetoTipo)
	{
		case 1:  instance_create_depth(X,Y,-Y,obj_cama_pared)  break
		case 2:  instance_create_depth(X,Y,-Y,obj_espejo3_piso)  break
		case 3:  instance_create_depth(X,Y,-Y,obj_tv)  break
		case 4:  instance_create_depth(X,Y,-Y,obj_puff_con_joystick)  break
		case 5:  instance_create_depth(X,Y,-Y,obj_puff_con_joystick2)  break
		case 6:  instance_create_depth(X,Y,-Y,obj_silla_puff)  break
		case 7:  instance_create_depth(X,Y,-Y,obj_puff)  break
		case 8:  instance_create_depth(X,Y,-Y,obj_mesita3)  break
		case 9:  instance_create_depth(X,Y,-Y,obj_mesita4)  break
		case 10:  instance_create_depth(X,Y,-Y,obj_mesita2)  break
		case 11:  instance_create_depth(X,Y,-Y,obj_mesita)  break
		case 12:  instance_create_depth(X,Y,global.depth_piso,obj_alfombra)  break
		case 13:  instance_create_depth(X,Y,global.depth_piso,obj_alfombra2)  break
		case 14:  instance_create_depth(X,Y,-Y,obj_cama_pared2)  break
		case 15:  instance_create_depth(X,Y,-Y,obj_perchero2)  break
		case 16:  instance_create_depth(X,Y,-Y,obj_lampara)  break
		case 17:  instance_create_depth(X,Y,-Y,obj_cuadro)  break
		case 18:  instance_create_depth(X,Y,-Y,obj_ventana)  break
		case 19:  instance_create_depth(X,Y,-Y,obj_banquito)  break
		case 20:  instance_create_depth(X,Y,-Y,obj_cama)  break
		case 21:  instance_create_depth(X,Y,-Y,obj_lampara_grande)  break
	}
}

