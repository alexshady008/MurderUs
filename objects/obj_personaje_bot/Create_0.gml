/// @description Propiedades
// Puede escribir su código en este editor
contr_datos = false

#region Propiedades de fisica
	phy_fixed_rotation = true
	var fix = physics_fixture_create()
	physics_fixture_set_polygon_shape (fix); 
	physics_fixture_add_point (fix, -14,10); 
	physics_fixture_add_point (fix, 14, 10); 
	physics_fixture_add_point (fix, 14, 32);
	physics_fixture_add_point (fix, -14, 32);
	physics_fixture_set_density (fix, 1.5)
	physics_fixture_set_restitution(fix, 0)
	physics_fixture_set_collision_group(fix, 1)
	physics_fixture_set_linear_damping(fix, 2.5)  //2.5
	physics_fixture_set_angular_damping(fix, 1)   //0.2
	physics_fixture_set_friction(fix, 0)  //0.1
	fixture = physics_fixture_bind(fix, id)
	physics_fixture_delete(fix)
#endregion


#region Variables
	jugador = true  // Var que contr si es el jugador o un bot
	impostor = false  // Si es tripulante o impostor
	muerto = false // SI el personaje esta muerto o no
	escondido = false //SI el pers se encuentra escondido o no en una alcantarilla
	skin = 1 //La skin a usar
	contrColor = 1 //Tipo de color de cada personaje
	color = c_white  //Color a dibujarse del jugador
	nombre = noone  // Nombre del jugador
	accion = "ninguna"  //Si esta haciendo alguna accion o no
	moviendose = false
	direccion = noone  // Direccion en que se mueve
	dirAnterior = 90  //Ultima direccion en la que se mueve
	fuerza = 3000*global.step_delta  //2000  //Fuerza en que se mueve
	velFuerza = fuerza;  // Fuerza de la velocidad  
	velFuerza2 = velFuerza/2  //Fuerza de velocidad menor
	idContrPos = noone
	pers_asesinar = noone
	obj_usar = noone
	actual_alcantarilla = noone
	prox_alcantarilla = noone
	alcantarilla_pasada = noone
	dist_prox_alcantarilla = 2000
	
	//Var de Sonidos 
	sonido_correr=noone  
	sonido_ataque=noone
	
	dist_asesinar = 100
	dist_accionar = 150
	contr_movimiento = true
	
#endregion






