/// @description Crea los objetos/partes
// Puede escribir su código en este editor

if (tipo!=false){
	
	switch(tipo){
		
		// Organizacion 1
		case 1:
			#region Caracteristicas
				//total_lineas_ordenar = 6
				mov_hor = 192
				mov_vert = 208
				posX_limite_izq = global.cam_x+160
				posX_limite_der = global.cam_x+1120
				posY_limite_arriba = global.cam_y+176
				posY_limite_abajo = global.cam_y+608
			#endregion
			
			#region Crea los objetos a ordenar
				total_objetos_organizar = 18
				var total_tipos_objetos = 6
				var max_objetos_por_tipo = 3
				var posX = 160
				var posY = 176
				for(j=0 ; j<total_tipos_objetos ; j++) obj_tipo[j] = 0
				//var objeto = instance_create_layer(global.cam_x+posX,global.cam_y+posY,"Interfaz_tareas",obj_objeto1_organizacion)
				//var objeto = instance_create_layer(global.cam_x+544,global.cam_y+posY,"Interfaz_tareas",obj_objeto2_organizacion)
				
				for(i=0 ; i<total_objetos_organizar ; i++){
					#region Contr el tipo de objeto a crearse
						randomize()
						var tipo_obj = irandom_range(0,total_tipos_objetos-1)
						while(obj_tipo[tipo_obj]>=max_objetos_por_tipo) {tipo_obj = irandom_range(0,total_tipos_objetos-1)}
						obj_tipo[tipo_obj]++
					#endregion
					
					#region Crea el objeto
						//var objeto = noone
						switch(tipo_obj){
							case 0: objeto[i] = instance_create_layer(global.cam_x+posX,global.cam_y+posY,"Interfaz_tareas",obj_objeto1_organizacion) break
							case 1: objeto[i] = instance_create_layer(global.cam_x+posX,global.cam_y+posY,"Interfaz_tareas",obj_objeto2_organizacion) break
							case 2: objeto[i] = instance_create_layer(global.cam_x+posX,global.cam_y+posY,"Interfaz_tareas",obj_objeto3_organizacion) break
							case 3: objeto[i] = instance_create_layer(global.cam_x+posX,global.cam_y+posY,"Interfaz_tareas",obj_objeto4_organizacion) break
							case 4: objeto[i] = instance_create_layer(global.cam_x+posX,global.cam_y+posY,"Interfaz_tareas",obj_objeto5_organizacion) break
							case 5: objeto[i] = instance_create_layer(global.cam_x+posX,global.cam_y+posY,"Interfaz_tareas",obj_objeto6_organizacion) break
						}
						//if (objeto!=noone) objeto.tipo = tipo
						objeto[i].tipo = tipo
					#endregion
					
					#region Contr las posiciones X y Y
						if (posX==posX_limite_der) posX=posX_limite_izq
						else posX+=mov_hor
						
						if (i==5 or i==11) posY+=mov_vert
					#endregion
				}
			#endregion
		break
		
	}
	
}