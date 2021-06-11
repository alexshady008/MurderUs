function scr_cargar_objetos(categoriaTipo, objetoTipo, X, Y) {

	switch(categoriaTipo)
	{
		//TAREAS
		case "T": scr_cargar_tareas(objetoTipo, X, Y)  break
		//PUERTAS
		case "P": scr_cargar_puertas(objetoTipo, X, Y)  break
		//SALA PRINCIPAL
		case "S": scr_cargar_obj_sala_principal(objetoTipo, X, Y)  break
		//DORMITORIO
		case "D": scr_cargar_obj_dormitorio(objetoTipo, X, Y)  break
		//EXPERIMENTOS
		case "E": scr_cargar_obj_experimentos(objetoTipo, X, Y)  break
		//MAQUINARIAS
		case "M": scr_cargar_obj_maquinarias(objetoTipo, X, Y)  break
		//ALMACEN
		case "A": scr_cargar_obj_almacen(objetoTipo, X, Y)  break
		//CONTROL
		case "C": scr_cargar_obj_control(objetoTipo, X, Y)  break
		//ENERGIA
		case "W": scr_cargar_obj_energia(objetoTipo, X, Y)  break
		//JARDIN
		case "J": scr_cargar_obj_jardin(objetoTipo, X, Y)  break
		//MINERALES Y ROCAS
		case "R": scr_cargar_obj_mineralesRocas(objetoTipo, X, Y)  break
		//OTROS
		case "O": scr_cargar_obj_otros(objetoTipo, X, Y)  break
		//INTERACTIVOS
		case "I": scr_cargar_obj_interactivos(objetoTipo, X, Y)  break
	}


}
