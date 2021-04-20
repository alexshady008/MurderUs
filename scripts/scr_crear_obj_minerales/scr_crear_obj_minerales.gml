// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_crear_obj_minerales(X, Y){
	var obj = noone
	
		switch(global.sel_objeto){
			case 1: obj = instance_create_depth(X,Y,-Y,obj_diamantes5)  break
			case 2: obj = instance_create_depth(X,Y,-Y,obj_diamante11)  break
			case 3: obj = instance_create_depth(X,Y,-Y,obj_roca13)  break
			case 4: obj = instance_create_depth(X,Y,-Y,obj_roca14)  break
			case 5: obj = instance_create_depth(X,Y,-Y,obj_roca_acuatica2)  break
			case 6: obj = instance_create_depth(X,Y,-Y,obj_roca_acuatica)  break
			case 7: obj = instance_create_depth(X,Y,-Y,obj_roca)  break
			case 8: obj = instance_create_depth(X,Y,-Y,obj_roca2)  break
			case 9: obj = instance_create_depth(X,Y,-Y,obj_carretilla_con_piedras)  break
			case 10: obj = instance_create_depth(X,Y,-Y,obj_roca5)  break
			case 11: obj = instance_create_depth(X,Y,-Y,obj_roca10)  break
			case 12: obj = instance_create_depth(X,Y,-Y,obj_roca6)  break
			case 13: obj = instance_create_depth(X,Y,-Y,obj_roca7)  break
			case 14: obj = instance_create_depth(X,Y,-Y,obj_roca8)  break
			case 15: obj = instance_create_depth(X,Y,-Y,obj_mineral3)  break
			case 16: obj = instance_create_depth(X,Y,-Y,obj_mineral2)  break
			case 17: obj = instance_create_depth(X,Y,-Y,obj_diamante2)  break
			case 18: obj = instance_create_depth(X,Y,-Y,obj_roca11)  break
			case 19: obj = instance_create_depth(X,Y,-Y,obj_diamante7)  break
			case 20: obj = instance_create_depth(X,Y,-Y,obj_diamante8)  break
			case 21: obj = instance_create_depth(X,Y,-Y,obj_diamante5)  break
			case 22: obj = instance_create_depth(X,Y,-Y,obj_diamante9)  break
			case 23: obj = instance_create_depth(X,Y,-Y,obj_roca_con_hongos)  break
			case 24: obj = instance_create_depth(X,Y,-Y,obj_mineral1)  break
			case 25: obj = instance_create_depth(X,Y,-Y,obj_roca3)  break
			case 26: obj = instance_create_depth(X,Y,-Y,obj_roca4)  break
			case 27: obj = instance_create_depth(X,Y,-Y,obj_polvo)  break
			case 28: obj = instance_create_depth(X,Y,-Y,obj_bloque_cemento)  break
		}
		
		return obj
}