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
	detective = false
	complice = false
	muerto = false // SI el personaje esta muerto o no
	escondido = false //SI el pers se encuentra escondido o no en una alcantarilla
	mostrar_pistas = false // Si al asesinar muestra las pistas o no
	pistas_mostradas = 0
	escala = 1  // la escala del sprite
	skin = 1 //La skin a usar
	contrColor = 1 //Tipo de color de cada personaje
	color = c_white  //Color a dibujarse del jugador
	prenda = false // La ropa a usar
	accesorio = false //Los accesorios o mascaras a usar
	sombrero = false // Los sombreros a usar
	mascota = false // Las mascotas a utilizar
	inst_mascota = noone
	color = c_white  // el color a ser dibujado
	nombre = noone  // Nombre del jugador
	accion = "ninguna"  //Si esta haciendo alguna accion o no
	moviendose = false
	direccion = noone  // Direccion en que se mueve
	dirAnterior = 90  //Ultima direccion en la que se mueve
	fuerza = 3000*global.step_delta  //2000  //Fuerza en que se mueve
	velFuerza = fuerza;  // Fuerza de la velocidad  
	velFuerza2 = velFuerza/2  //Fuerza de velocidad menor
	idServer = noone  //El id que le proporciona el servidor
	idJugador = noone  //el id que le proporciona el cliente
	alarma_datos_online = false  //Contr la alarma que envia datos
	enviar_datos = true
	enviando_datos = false
	idContrPos = noone
	pers_asesinar = noone
	pers_reportar = noone
	pers_investigar = noone
	contacto_con_sangre = false
	escaneando = false
	color_sangre = make_color_rgb(183, 0, 0)
	color_sangre_ultravioleta = make_color_rgb(91, 237, 255)
	/// Var de complice
	pers_limpiar = noone
	pers_cabeza_limpiar = noone
	sangre_pers_limpiar = noone
	huella_limpiar = noone
	sangre_limpiar = noone
	obj_agujero_guardar_cuerpo = noone
	limpiando_rastro = false
	bolsa_cadaver = noone
	cadaver_guardado = noone
	///
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
	mostrarSpawn = false
	
	raza = 1
#endregion






