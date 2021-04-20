/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (global.estadoJuego == "jugando")
{
	global.jugabilidad=true
}


//Contr el depth de la luz
if (instance_exists(obj_contr_luz)) {
	obj_contr_luz.depth = obj_contr_luz.depth_inicial
	global.sombraAlfa = obj_contr_luz.sombraAlfa_inicial
	global.luzRadio_escala = obj_contr_luz.luzRadio_inicial
}	