/// @description Se destruye si se cambia de estado o se usa una tarea
// Puede escribir su código en este editor


if (global.estadoJuego!="jugando" or global.jugabilidad==false) instance_destroy()