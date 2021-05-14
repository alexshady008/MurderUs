/// @description Variables y propiedades
// Puede escribir su código en este editor
contr_datos = false

impostor = false  // Si es tripulante o impostor
detective = false
complice = false
jugador = false
muerto = false // SI el personaje esta muerto o no
escondido = false
mostrar_pistas = false // Si al asesinar muestra las pistas o no
pistas_mostradas = 0
idServer = noone  //El id que le proporciona el servidor
idJugador = noone  //El id que le proporciona el cliente
nombre = noone  // Nombre del jugador
direccion = 404  //Es la direccion en la que se mueve el jugador, 404 seria similar a "noone"
dirAnterior = 90  //Ultima direccion en la que se mueve
moviendose = false
accion = false  
color = c_white  //Color a dibujarse del jugador
skin = 1 //La skin a usar
contrColor = 1 //Tipo de color de cada personaje
prenda = false // La ropa a usar
accesorio = false //Los accesorios o mascaras a usar
sombrero = false // Los sombreros a usar
mascota = false // Las mascotas a utilizar
inst_mascota = noone
velFuerza = 0  //Fuerza de la velocidad en la que se mueve
velFuerza2 = 0  //Fuerza de velocidad menor
idContrPos = noone
sonido = noone
dist_accionar = 150
contr_movimiento = true
mostrarSpawn = false
contacto_con_sangre = false
escaneando = false
color_sangre = make_color_rgb(183, 0, 0)
color_sangre_ultravioleta = make_color_rgb(91, 237, 255)
dist_alcantarilla = 150

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
test = false
test2 = false


// Variables de movimiento de cada jugador
objetivo_posX = noone
objetivo_posY = noone
objetivo_direccion = noone
//objetivo_muerte = false
objetivo_accion = "ninguna"
//objetivo_escondido = false
//objetivo_limpiando_rastro = false


anterior_posX = noone
anterior_posY = noone
anterior_direccion = 404
//anterior_muerte = false
anterior_accion = "ninguna"
//anterior_escondido = false
//anterior_limpiando_rastro = false


//Contr su visibilidad en el lobby
if (room==rm_lobby and mostrarSpawn==false) {
	visible=false
	var tiempo_visibilidad = 50/global.step_delta
	if (tiempo_visibilidad>=1) alarm[3] = tiempo_visibilidad
	else alarm[3] = 1
}	