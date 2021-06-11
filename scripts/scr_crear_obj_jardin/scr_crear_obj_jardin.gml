// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_crear_obj_jardin(X, Y){
	var obj = noone
	
		switch(global.sel_objeto){
			case 1: obj = instance_create_depth(X,Y,-Y,obj_arbol)  break
			case 2: obj = instance_create_depth(X,Y,-Y,obj_arbol4)  break
			case 3: obj = instance_create_depth(X,Y,-Y,obj_arbol_manzana)  break
			case 4: obj = instance_create_depth(X,Y,-Y,obj_arbol5)  break
			case 5: obj = instance_create_depth(X,Y,-Y,obj_arbol6)  break
			case 6: obj = instance_create_depth(X,Y,-Y,obj_arbol7)  break
			case 7: obj = instance_create_depth(X,Y,-Y,obj_arbol8)  break
			case 8: obj = instance_create_depth(X,Y,-Y,obj_arbol3)  break
			case 9: obj = instance_create_depth(X,Y,-Y,obj_arbol2)  break
			case 10: obj = instance_create_depth(X,Y,-Y,obj_arbol_aquatico)  break
			case 11: obj = instance_create_depth(X,Y,-Y,obj_arbol_hongos)  break
			case 12: obj = instance_create_depth(X,Y,-Y,obj_fruto_grande)  break
			case 13: obj = instance_create_depth(X,Y,-Y,obj_arbusto3)  break
			case 14: obj = instance_create_depth(X,Y,-Y,obj_arbusto2)  break
			case 15: obj = instance_create_depth(X,Y,-Y,obj_plantaciones2)  break
			case 16: obj = instance_create_depth(X,Y,-Y,obj_plantaciones1)  break
			case 17: obj = instance_create_depth(X,Y,-Y,obj_paja)  break
			case 18: obj = instance_create_depth(X,Y,-Y,obj_lavanda_planta)  break
			case 19: obj = instance_create_depth(X,Y,-Y,obj_arbusto_flores)  break
			case 20: obj = instance_create_depth(X,Y,-Y,obj_arbusto)  break
			case 21: obj = instance_create_depth(X,Y,-Y,obj_hongo4)  break
			case 22: obj = instance_create_depth(X,Y,-Y,obj_hongo_gigante)  break
			case 23: obj = instance_create_depth(X,Y,-Y,obj_hongo5)  break
			case 24: obj = instance_create_depth(X,Y,-Y,obj_hongos)  break
			case 25: obj = instance_create_depth(X,Y,-Y,obj_arbusto6)  break
			case 26: obj = instance_create_depth(X,Y,-Y,obj_hormiguero)  break
			case 27: obj = instance_create_depth(X,Y,-Y,obj_planta6)  break
			case 28: obj = instance_create_depth(X,Y,-Y,obj_planta7)  break
			case 29: obj = instance_create_depth(X,Y,-Y,obj_arbusto4)  break
			case 30: obj = instance_create_depth(X,Y,-Y,obj_planta10)  break
			case 31: obj = instance_create_depth(X,Y,-Y,obj_planta3)  break
			case 32: obj = instance_create_depth(X,Y,-Y,obj_manta_con_tomates)  break
			case 33: obj = instance_create_depth(X,Y,-Y,obj_hongo3)  break
			case 34: obj = instance_create_depth(X,Y,-Y,obj_tomates)  break
			case 35: obj = instance_create_depth(X,Y,-Y,obj_planta_flores)  break
			case 36: obj = instance_create_depth(X,Y,-Y,obj_arbusto5)  break
			case 37: obj = instance_create_depth(X,Y,-Y,obj_arbusto8)  break
			case 38: obj = instance_create_depth(X,Y,-Y,obj_canasta_picnic)  break
			case 39: obj = instance_create_depth(X,Y,-Y,obj_canasta_verduras)  break
			case 40: obj = instance_create_depth(X,Y,-Y,obj_arbusto7)  break
			case 41: obj = instance_create_depth(X,Y,-Y,obj_enredadera)  break
			case 42: obj = instance_create_depth(X,Y,-Y,obj_techo_madera)  break
		}
		
		return obj
}