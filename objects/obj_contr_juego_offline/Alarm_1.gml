/// @description Crea a los jugadores
// Puede escribir su código en este editor

#region Crea a los tripulantes
	if (global.modo_jugabilidad_offline==1 ) var cant_tripulantes = 1
	//else var cant_tripulantes = instance_number(obj_contr_pos_personaje)
	else var cant_tripulantes = global.cant_tripulantes_sala
	
	for (a=0 ; a<cant_tripulantes ; a++) {
		var contr_pos = instance_find(obj_contr_pos_personaje,a)
		if (contr_pos.ocupado==false) {
			contr_pos.ocupado = true
			
			// Crea al jugador
			if (a==0 and global.jugador_tipo=="TRIPULANTE"){
				var personaje = instance_create_layer(contr_pos.x, contr_pos.y, "Personajes", obj_personaje)
				global.jugador = personaje
				global.colorElegido = a+1
				//Lo personaliza
				personaje.nombre = global.nombre
				personaje.skin = global.skinElegido
				personaje.prenda = global.prendaElegida
				personaje.accesorio = global.accesorioElegido
				personaje.sombrero = global.sombreroElegido
				personaje.mascota = global.mascotaElegida
				personaje.inst_mascota = instance_create_layer(personaje.x, personaje.y, "Personajes", obj_mascota_personaje)
				personaje.inst_mascota.id_creador = personaje
				personaje.inst_mascota.mascota = global.mascotaElegida
			}
			// Crea a los bots
			else {
				var personaje = instance_create_layer(contr_pos.x, contr_pos.y, "Personajes", obj_personaje_bot)
				personaje.nombre = "Bot "+string(a+1)
			}
			
			personaje.idContrPos = contr_pos
			personaje.contrColor = a+1
			personaje.alarm[0]=1
			
		}	
	}

#endregion


#region Crea a los personajes de la raza 2
if (global.modo_jugabilidad_offline==2)
{
	var cant_raza2 = global.cant_raza2_sala
	var cant_alcantarilla = instance_number(obj_agujero)
	if (cant_alcantarilla>1){
	for (a=0 ; a<cant_raza2 ; a++) {
		randomize()
		var num_ = irandom_range(0, cant_alcantarilla-1)
		var contr_pos = instance_find(obj_agujero,num_)
			
		// Crea al jugador
		if (a==0 and global.jugador_tipo=="IMPOSTOR"){
			var personaje = instance_create_layer(contr_pos.x, contr_pos.y, "Personajes", obj_personaje)
			global.jugador = personaje
			global.colorElegido = irandom_range(1,3)
			//Lo personaliza
			personaje.nombre = global.nombre
			/*personaje.skin = 34
			personaje.prenda = global.prendaElegida
			personaje.accesorio = global.accesorioElegido
			personaje.sombrero = global.sombreroElegido*/
			personaje.mascota = global.mascotaElegida
			personaje.inst_mascota = instance_create_layer(personaje.x, personaje.y, "Personajes", obj_mascota_personaje)
			personaje.inst_mascota.id_creador = personaje
			personaje.inst_mascota.mascota = global.mascotaElegida
		}
		// Crea a los bots
		else {
			var personaje = instance_create_layer(contr_pos.x, contr_pos.y, "Personajes", obj_raza2_bot)
			personaje.nombre = "Zombie "+string(a+1)
		}
		
		personaje.skin = 34
		personaje.raza = 2
		personaje.idContrPos = contr_pos
		personaje.contrColor = irandom_range(1,3)
		personaje.alarm[0]=1
				
	}
	}
}
#endregion


#region Contr la camara
	scr_crea_camara_jugador()
#endregion