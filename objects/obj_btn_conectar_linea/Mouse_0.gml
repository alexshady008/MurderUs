/// @description Se presiona
// Puede escribir su código en este editor
if ( global.jugabilidad == false and global.tarea_completada == false and unido==false){
	
	
	if (obj_contr_tarea4.presionar==false) 
	{
		obj_contr_tarea4.presionar = true
		obj_contr_tarea4.color_linea = color
		obj_contr_tarea4.btn_presionado = id
	}
	else 
	{
		if (obj_contr_tarea4.btn_presionado!=noone and id!=obj_contr_tarea4.btn_presionado 
			and obj_contr_tarea4.btn_presionado.contr_color==contr_color)
		{
			unido = true
			btn_unido = obj_contr_tarea4.btn_presionado
			with(obj_contr_tarea4){
				btn_unidos++
				btn_presionado.unido = true
				btn_presionado = noone
				presionar = false
				//instance_destroy()
			}

		}
	}
}
