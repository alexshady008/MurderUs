// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_comprobar_rastros_complice(limpiando){
	
	#region comprueba si hay huellas para limpiar
		var huellas = instance_nearest(x,y,obj_huellas)
		if (huellas!=noone){
			var dist = point_distance(x,y,huellas.x,huellas.y)
			if (dist<dist_accionar){
				huella_limpiar = huellas
			}
		}
	#endregion
			
	#region comprueba si hay sangre para limpiar
	// Sangre del asesino
		var sangre = instance_nearest(x,y,obj_huellas_sangre)
		if (sangre!=noone){
			var dist = point_distance(x,y,sangre.x,sangre.y)
			if (dist<dist_accionar){
				sangre_limpiar = sangre
			}
		}
	//Sangre del asesinado
	if (sangre_limpiar==noone){
		sangre = instance_nearest(x,y,obj_particulas_sangre)
		if (sangre!=noone){
			var dist = point_distance(x,y,sangre.x,sangre.y)
			if (dist<dist_accionar){
				sangre_limpiar = sangre
			}
		}
	}
	#endregion
			
	#region comprueba si hay sangre en el asesino para limpiar
		var sangre_entidad = instance_nearest(x,y,obj_entidad_online)
		if (sangre_entidad!=noone and sangre_entidad!=id and sangre_entidad.mostrar_pistas==true){
			var dist = point_distance(x,y,sangre_entidad.x,sangre_entidad.y)
			if (dist<dist_accionar){
				sangre_pers_limpiar = sangre_entidad
			}
		}
	#endregion
			
	#region comprueba si hay un cadaver para limpiar
		var pers = instance_nearest(x,y,obj_personaje_muerto)
		if (pers!=noone){
			var dist = point_distance(x,y,pers.x,pers.y)
			if (dist<dist_accionar){
				pers_limpiar = pers
			}
		}
	#endregion
			
	#region comprueba si hay una cabeza de cadaver para limpiar
		var cabeza = instance_nearest(x,y,obj_cabeza_decapitada)
		if (cabeza!=noone){
			var dist = point_distance(x,y,cabeza.x,cabeza.y)
			if (dist<dist_accionar){
				pers_cabeza_limpiar = cabeza
			}
		}
	#endregion
			
	#region  COmprueba si hay una alcantarilla para guardar el cadaver
	if (limpiando){
		var alcantarilla = instance_nearest(x,y,obj_agujero)
		if (alcantarilla!=noone){
			var dist = point_distance(x,y,alcantarilla.x,alcantarilla.y)
			if (dist<dist_accionar/2){
				//actual_alcantarilla = alcantarilla
				obj_agujero_guardar_cuerpo = alcantarilla
			}
		}
	}	
	#endregion
}