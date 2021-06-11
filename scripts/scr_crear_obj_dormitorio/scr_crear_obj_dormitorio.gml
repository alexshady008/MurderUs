// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_crear_obj_dormitorio(X, Y){
	var obj = noone
	
		switch(global.sel_objeto){
			case 1: obj = instance_create_depth(X,Y,-Y,obj_cama_pared)  break
			case 2: obj = instance_create_depth(X,Y,-Y,obj_espejo3_piso)  break
			case 3: obj = instance_create_depth(X,Y,-Y,obj_tv)  break
			case 4: obj = instance_create_depth(X,Y,-Y,obj_puff_con_joystick)  break
			case 5: obj = instance_create_depth(X,Y,-Y,obj_puff_con_joystick2)  break
			case 6: obj = instance_create_depth(X,Y,-Y,obj_silla_puff)  break
			case 7: obj = instance_create_depth(X,Y,-Y,obj_puff)  break
			case 8: obj = instance_create_depth(X,Y,-Y,obj_mesita3)  break
			case 9: obj = instance_create_depth(X,Y,-Y,obj_mesita4)  break
			case 10: obj = instance_create_depth(X,Y,-Y,obj_mesita2)  break
			case 11: obj = instance_create_depth(X,Y,-Y,obj_mesita)  break
			case 12: obj = instance_create_depth(X,Y,global.depth_piso,obj_alfombra)  break
			case 13: obj = instance_create_depth(X,Y,global.depth_piso,obj_alfombra2)  break
			case 14: obj = instance_create_depth(X,Y,-Y,obj_cama_pared2)  break
			case 15: obj = instance_create_depth(X,Y,-Y,obj_perchero2)  break
			case 16: obj = instance_create_depth(X,Y,-Y,obj_lampara)  break
			case 17: obj = instance_create_depth(X,Y,-Y,obj_cuadro)  break
			case 18: obj = instance_create_depth(X,Y,-Y,obj_ventana)  break
			case 19: obj = instance_create_depth(X,Y,-Y,obj_banquito)  break
			case 20: obj = instance_create_depth(X,Y,-Y,obj_cama)  break
			case 21: obj = instance_create_depth(X,Y,-Y,obj_lampara_grande)  break
		}
		
		return obj
}