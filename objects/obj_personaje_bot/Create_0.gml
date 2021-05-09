/// @description Propiedades
// Puede escribir su código en este editor
contr_datos = false


#region Path
	path = path_add()
	path_activado = false
	vel_path = 6
#endregion


#region Variables
	jugador = false  // Var que contr si es el jugador o un bot
	impostor = false  // Si es tripulante o impostor
	complice = false
	muerto = false // SI el personaje esta muerto o no
	escondido = false //SI el pers se encuentra escondido o no en una alcantarilla
	skin = 1 //La skin a usar
	contrColor = 1 //Tipo de color de cada personaje
	color = c_white  //Color a dibujarse del jugador
	nombre = noone  // Nombre del jugador
	prenda = false
	sombrero = false
	accesorio = false
	mascota = false
	accion = false  //Si esta haciendo alguna accion o no
	tareas_completadas = 0
	completando_tarea = false
	num_tarea_aleatorio = 0
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






