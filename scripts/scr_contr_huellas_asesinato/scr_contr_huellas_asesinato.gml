function scr_contr_huellas_asesinato(color_sangre, sangre_normal) {
	if (global.estadoJuego == "jugando")
	{
		if (mostrar_pistas!=false)
		{
			if (pistas_mostradas < 30){
				//Crea una huella
				if (sangre_normal){
					var huella = instance_create_depth(x,y+43,depth+1,obj_huellas)
					huella.idCreador = id
					if (direccion==noone) huella.direccion = dirAnterior
					else huella.direccion = direccion
				}
			
				// Crea rastros de sangre
				if (pistas_mostradas % 2 == 0){
					var sangre = instance_create_depth(x,y+43,depth+1,obj_huellas_sangre)
					sangre.idCreador = id
					sangre.color_sangre = color_sangre
					sangre.constancia = sangre_normal
					if (direccion==noone) sangre.direccion = dirAnterior
					else sangre.direccion = direccion
				}
		
				pistas_mostradas += 1
				
				if (sangre_normal) var n = 2
				else var n = 6
				
				if (global.step_delta>=1) alarm[n] = (room_speed/2)/global.step_delta;
				else alarm[n] = room_speed/2;
			}
			else {
				mostrar_pistas = false
				pistas_mostradas = 0
			}
		}
	}
	else {
		mostrar_pistas = false
		pistas_mostradas = 0
	}


}
