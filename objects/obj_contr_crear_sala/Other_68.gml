/// @description Contr los datos del servidor
// Puede escribir su código en este editor

var tipo = async_load[? "type"]
//show_debug_message(tipo)

switch(tipo){
	
	case network_type_data:
		//show_debug_message("Datos!")
		
		var buffer = async_load[? "buffer"]
		buffer_seek(buffer,buffer_seek_start,0)
		var bufferDatos = buffer_read(buffer,buffer_text)
		var mapaDatos = json_decode(bufferDatos)
		
		if ( ds_exists(mapaDatos,ds_type_map) ) {
			var mensaje = ds_map_find_value(mapaDatos,"mensaje")
			
			switch(mensaje)
			{
				
			case "salaCreada":
				global.lista_num_tareas = ds_map_find_value(mapaDatos,"indexTareas")	
				global.jugabilidad=true
				global.administrador=true
				global.editor = false
				room_goto(rm_lobby)
			break;
				
			}
			
		}
		
	break;
}	
