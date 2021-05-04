// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_crear_puertas(X, Y){
	var obj = noone
	
		switch(global.sel_objeto){
			case 1: obj = instance_create_depth(X,Y,-Y,obj_puerta)  break
			case 2: obj = instance_create_depth(X,Y,-Y,obj_puerta2)  break
			case 3: obj = instance_create_depth(X,Y,-Y,obj_puerta3)  break
			case 4: obj = instance_create_depth(X,Y,-Y,obj_puerta4)  break
			case 5: obj = instance_create_depth(X,Y,-Y,obj_puerta5)  break
			case 6: obj = instance_create_depth(X,Y,-Y,obj_puerta5_diagonal)  break
			case 7: obj = instance_create_depth(X,Y,-Y,obj_puerta6)  break
			case 8: obj = instance_create_depth(X,Y,-Y,obj_puerta6_diagonal)  break
		}
		
		return obj
}