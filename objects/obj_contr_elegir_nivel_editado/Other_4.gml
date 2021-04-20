/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

global.nivel_elegido = 0
global.elegir_mapa_editor = false
global.mapa_elegido = 0
global.zoom = 1

#region Crea los botones de los niveles del editor

	var ny = 0
	var nx = 48
	for(i=0;i<global.max_niveles_guardar;i++)
	{
		// boton elegir
		boton_elegir[i] = instance_create_layer(nx,256+ny,"Interfaz",obj_elegir_nivel)
		boton_elegir[i].nivel = i
		// boton eliminar
		boton_eliminar[i] = instance_create_layer(nx+80,256+ny,"Interfaz",obj_eliminar_nivel)
		boton_eliminar[i].nivel = i
		// boton editar
		boton_editar[i] = instance_create_layer(nx+160,256+ny,"Interfaz",obj_editar_nivel)
		boton_editar[i].nivel = i
		// boton nivel
		boton_nivel[i] = instance_create_layer(nx+384,256+ny,"Interfaz",obj_ver_nivel)
		boton_nivel[i].nivel = i

		ny += 96
		
		//Reinicia posiciones
		if (i==4){
			ny = 0
			nx = 704
		}
	}
#endregion	