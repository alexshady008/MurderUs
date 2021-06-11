/// @description Crea los objetos/partes
// Puede escribir su código en este editor

if (tipo!=false){
	
	switch(tipo){
		
		// Mantenimiento 1
		case 1:
			#region Crea las herramientas para mantener
				var herramienta1 = instance_create_layer(global.cam_x+448,global.cam_y+656,"Interfaz_tareas",obj_herramienta2_mantenimiento)
				herramienta1.tipo = tipo
				var herramienta2 = instance_create_layer(global.cam_x+672,global.cam_y+656,"Interfaz_tareas",obj_herramienta3_mantenimiento)
				herramienta2.tipo = tipo
				var herramienta3 = instance_create_layer(global.cam_x+896,global.cam_y+656,"Interfaz_tareas",obj_herramienta1_mantenimiento)
				herramienta3.tipo = tipo
			#endregion
			
			#region Crea los objetos a mantener
				total_objeto_mantener = 5
				var posX = 160
				var posY = 272
				var n = 240
				randomize()
				for(i=0 ; i<total_objeto_mantener ; i++){
					var tipo_objeto = irandom_range(1,max_tipo_obj)
					var objeto = noone
					switch(tipo_objeto){
						case 1: objeto = instance_create_layer(global.cam_x+posX,global.cam_y+posY,"Interfaz_tareas",obj_objeto1_mantenimiento)  break
						case 2: objeto = instance_create_layer(global.cam_x+posX,global.cam_y+posY,"Interfaz_tareas",obj_objeto2_mantenimiento)  break
						case 3: objeto = instance_create_layer(global.cam_x+posX,global.cam_y+posY,"Interfaz_tareas",obj_objeto3_mantenimiento)  break
					}
					if (objeto!=noone) objeto.tipo=tipo
					posX += n
				}
			#endregion
		break
		
		// Mantenimiento 2
		case 2:
			#region Crea las herramientas para mantener
				var herramienta1 = instance_create_layer(global.cam_x+432,global.cam_y+656,"Interfaz_tareas",obj_herramienta3_mantenimiento)
				herramienta1.tipo = tipo
				var herramienta2 = instance_create_layer(global.cam_x+640,global.cam_y+656,"Interfaz_tareas",obj_herramienta1_mantenimiento)
				herramienta2.tipo = tipo
				var herramienta3 = instance_create_layer(global.cam_x+870,global.cam_y+656,"Interfaz_tareas",obj_herramienta2_mantenimiento)
				herramienta3.tipo = tipo
			#endregion
			
			#region Crea los objetos a mantener
				randomize()
				total_objeto_mantener = irandom_range(4,7)
				for(i=0 ; i<total_objeto_mantener ; i++){
					var posX = irandom_range(160,1216)
					var posY = irandom_range(160,448)
					var tipo_objeto = irandom_range(1,max_tipo_obj)
					var objeto = noone
					switch(tipo_objeto){
						case 1: objeto = instance_create_layer(global.cam_x+posX,global.cam_y+posY,"Interfaz_tareas",obj_objeto1_mantenimiento)  break
						case 2: objeto = instance_create_layer(global.cam_x+posX,global.cam_y+posY,"Interfaz_tareas",obj_objeto2_mantenimiento)  break
						case 3: objeto = instance_create_layer(global.cam_x+posX,global.cam_y+posY,"Interfaz_tareas",obj_objeto3_mantenimiento)  break
					}
					if (objeto!=noone) objeto.tipo=tipo
				}
			#endregion
		break
		
		// Mantenimiento 3
		case 3:
			#region Crea las herramientas para mantener
				var herramienta1 = instance_create_layer(global.cam_x+440,global.cam_y+656,"Interfaz_tareas",obj_herramienta2_mantenimiento)
				herramienta1.tipo = tipo
				var herramienta2 = instance_create_layer(global.cam_x+650,global.cam_y+656,"Interfaz_tareas",obj_herramienta3_mantenimiento)
				herramienta2.tipo = tipo
				var herramienta3 = instance_create_layer(global.cam_x+880,global.cam_y+656,"Interfaz_tareas",obj_herramienta1_mantenimiento)
				herramienta3.tipo = tipo
			#endregion
			
			#region Crea los objetos a mantener
				total_objeto_mantener = 4
				var posX = 256
				var posY = 360
				var n = 256
				randomize()
				for(i=0 ; i<total_objeto_mantener ; i++){
					var tipo_objeto = irandom_range(1,max_tipo_obj)
					var objeto = noone
					switch(tipo_objeto){
						case 1: objeto = instance_create_layer(global.cam_x+posX,global.cam_y+posY,"Interfaz_tareas",obj_objeto1_mantenimiento)  break
						case 2: objeto = instance_create_layer(global.cam_x+posX,global.cam_y+posY,"Interfaz_tareas",obj_objeto2_mantenimiento)  break
						case 3: objeto = instance_create_layer(global.cam_x+posX,global.cam_y+posY,"Interfaz_tareas",obj_objeto3_mantenimiento)  break
					}
					if (objeto!=noone) objeto.tipo=tipo
					posX += n
				}
			#endregion
			
			if (instance_exists(obj_titulos_tareas)) obj_titulos_tareas.dibujar_fondo=true
		break
		
	}
	
}