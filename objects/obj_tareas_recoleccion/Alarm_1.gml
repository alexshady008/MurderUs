/// @description Crea los objetos/partes
// Puede escribir su código en este editor

if (tipo!=false){
	
	var posX = 273
	var posY = 207
	
	for(i=0 ; i<objetos_max_crearse ; i++){
		
		#region COntr las posiciones
			// Contr la PosX y PosY
			if (i==3) {
				posX = 273
				posY = 512
			}
		#endregion
		
		#region Crea los arbustos/bloques y los objetos ocultos
			var bloque = instance_create_layer(global.cam_x+posX,global.cam_y+posY,"Interfaz_tareas",obj_bloque_recoleccion)
			bloque.tipo = tipo
			randomize()
			var crear_objeto = irandom_range(0,2)
			if (crear_objeto!=0) {
				total_objetos_recoger++
				bloque.objeto = instance_create_depth(global.cam_x+posX,global.cam_y+posY,bloque.depth+1,obj_objeto_recoleccion)
				bloque.objeto.tipo = tipo
			}
		#endregion
		
		posX += 365 
	}
	
}