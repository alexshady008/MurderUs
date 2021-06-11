/// @description Crea los objetos/partes
// Puede escribir su código en este editor

if (tipo!=false){
	
	switch(tipo){
		
		// Rompecabeza 1
		case 1:
		total_piezas_completar = 6
		#region Dibuja las partes del rompecabeza
			var parte1 = instance_create_layer(global.cam_x+364,global.cam_y+156,"Interfaz_tareas",obj_parte_rompecabeza)
			parte1.sprite_index = spr_parte1_rompecabeza1
			parte1.posX = global.cam_x+761
			parte1.posY = global.cam_y+482
			var parte2 = instance_create_layer(global.cam_x+851,global.cam_y+165,"Interfaz_tareas",obj_parte_rompecabeza)
			parte2.sprite_index = spr_parte2_rompecabeza1
			parte2.posX = global.cam_x+641
			parte2.posY = global.cam_y+408
			var parte3 = instance_create_layer(global.cam_x+212,global.cam_y+397,"Interfaz_tareas",obj_parte_rompecabeza)
			parte3.sprite_index = spr_parte3_rompecabeza1
			parte3.posX = global.cam_x+635
			parte3.posY = global.cam_y+348
			var parte4 = instance_create_layer(global.cam_x+1047,global.cam_y+321,"Interfaz_tareas",obj_parte_rompecabeza)
			parte4.sprite_index = spr_parte4_rompecabeza1
			parte4.posX = global.cam_x+523
			parte4.posY = global.cam_y+252
			var parte5 = instance_create_layer(global.cam_x+377,global.cam_y+555,"Interfaz_tareas",obj_parte_rompecabeza)
			parte5.sprite_index = spr_parte5_rompecabeza1
			parte5.posX = global.cam_x+523
			parte5.posY = global.cam_y+477
			var parte6 = instance_create_layer(global.cam_x+902,global.cam_y+554,"Interfaz_tareas",obj_parte_rompecabeza)
			parte6.sprite_index = spr_parte6_rompecabeza1
			parte6.posX = global.cam_x+765
			parte6.posY = global.cam_y+251
		#endregion
		break
		
	}
	
}