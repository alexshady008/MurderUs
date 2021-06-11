/// @description Variables
// Puede escribir su código en este editor

estadoTeclado = ""
tipoObjeto = -1 // Indice usado para guardar, cargar y compartir los objetos en los niveles
room_delta = (1/room_speed)*1000000;


#region Controla cuando debe enviar datos del ranking una vez finalizado la partida online
	scr_enviar_datos_a_base_de_datos()
#endregion


// Mostrar datos de usuarios
mostrarDatos = false