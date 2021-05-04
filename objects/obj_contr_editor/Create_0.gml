/// @description Propiedades del mapa
// Puede escribir su código en este editor

if (instance_exists(obj_contr_luz)) instance_destroy(obj_contr_luz)


#region Variables del editor
	global.lista_obj = 1  //Numero de la lista de objetos
	global.max_listas_obj = 2
	global.max_objetos = 14 //Cant de objetos maximos por categoria
	global.visible_opciones = true   //Controla si aparecen las opciones o no
	global.categoria_obj = 1   //Selecciona una categoria de objetos
	global.cant_categoria_obj_max = 13  //Cant maxima de categorias de objetos a crear
	global.nivel_creado = noone
	//global.datos_nivel_pers = noone
	global.destruir = false
	global.sel_objeto = 0
	global.zoom = 1
	global.max_zoom = 3
	//global.tarea_a_crearse = 0
	cuadricula = 64   //Tamaño de la cuadricula a dibujarse
	X=0
	Y=0
	tipoObjeto = -1 // Indice usado para guardar, cargar y compartir los objetos en los niveles
	ultimo_paso_tutorial = 3
	aviso_crear_tareas = false
	aviso_nivel_guardado = false
	aviso_nivel_no_guardado = false
	aviso_objeto_no_creado = false
	aviso_objeto_de_pared_no_creado = false
	aviso_objeto_cant_maxima = false
#endregion


#region Contr variables segun el mapa
	var ancho_inicial = 3840
	var alto_inicial = 2160
	switch(global.mapa_elegido){
		case 1: 
			global.max_tareas_crearse = 10  
			var posX_camara = 2948 - (ancho_inicial/2)
			var posY_camara = 712 - (alto_inicial/2)
		break
		case 2: global.max_tareas_crearse = 8  
			var posX_camara = 0 
			var posY_camara = 0 
		break
		case 3: global.max_tareas_crearse = 14  
			var posX_camara = 2275 - (ancho_inicial/2)
			var posY_camara = 1726 - (alto_inicial/2)
		break
	}
#endregion


#region Contr las cantidades de tareas			
	for(i=0 ; i<global.max_tareas_crearse ; i++){
		global.tareas_creadas[i] = false
	}
#endregion


//Crea el Boton de emergencia
//var objDepth = -(room_height/2)
//instance_create_depth(room_width/2,room_height/2,objDepth,obj_boton_emergencia)


#region camara
	//global.camara = camera_create_view(posX_btn_emergencia-640,posY_btn_emergencia-360,1280,720,0,-1,-1,-1,640,360) 
	global.camara = camera_create_view(posX_camara,posY_camara,ancho_inicial,alto_inicial,0,-1,-1,-1,640,360)  //43,7%
	view_camera[0] = global.camara
#endregion


#region Si el nivel fue creado, lo carga
	if (global.datos_nivel_pers!=noone){
		scr_contr_cargar_nivel(global.datos_nivel_pers)
	}
#endregion


#region Crea los objetos
	cam_x = camera_get_view_x(view_camera[0]) 
	cam_y = camera_get_view_y(view_camera[0]) 
	cam_ancho = camera_get_view_width(view_camera[0])
	cam_alto = camera_get_view_height(view_camera[0])
	
	// palanca
	instance_create_layer((cam_x+cam_ancho)-64,(cam_y+cam_alto)-64,"Interfaz",obj_palanca_mov_cam)
	// atras
	instance_create_layer(cam_x+40,cam_y+40,"Interfaz",obj_volver_editor)
	// guardar
	instance_create_layer(cam_x+200,cam_y+40,"Interfaz",obj_guardar_nivel)
	// Elegir
	instance_create_layer(cam_x+100,cam_y+40,"Interfaz",obj_crear_nivel)
	// Cambiar fondos
	//cambiar_fondos = instance_create_layer(cam_x+280,cam_y+40,"Interfaz",obj_cambiar_fondo)
	// Cambiar opciones
	instance_create_layer(cam_x+640,cam_y+40,"Interfaz",obj_cambiar_opciones)
	// borrar objetos
	instance_create_layer(cam_x+150,(cam_y+cam_alto)-64,"Interfaz",obj_borrar_obj)
	// cambiar lista objetos izq
	instance_create_layer(cam_x+342,(cam_y+cam_alto)-64,"Interfaz",obj_pasar_lista_obj_izq)
	// cambiar Lista objetos der
	instance_create_layer(cam_x+938,(cam_y+cam_alto)-64,"Interfaz",obj_pasar_lista_obj_der)
	// cambiar categoria objetos izq
	instance_create_layer(cam_x+342,(cam_y+cam_alto)-18,"Interfaz",obj_pasar_categoria_obj_izq)
	// cambiar categoria objetos der
	instance_create_layer(cam_x+938,(cam_y+cam_alto)-18,"Interfaz",obj_pasar_categoria_obj_der)
	// Agrandar pantalla
	instance_create_layer(cam_x+938,(cam_y+cam_alto)-64,"Interfaz",obj_agrandar_pantalla)
	// achicar pantalla
	instance_create_layer(cam_x+938,(cam_y+cam_alto)-64,"Interfaz",obj_achicar_pantalla)

	// Crea los iconos para sel objetos
	if instance_exists(obj_sel_objetos) {
		with(obj_sel_objetos) { instance_destroy() }
	}
	
	var max_cant_objetos = global.max_objetos
	var posX = 424
	var posY = 190 //128
	var n=72
	for(i=1 ; i<=max_cant_objetos ; i++){
		var obj = instance_create_layer(cam_x+posX,(cam_y+cam_alto)-posY,"Interfaz",obj_sel_objetos)
		obj.obj_inicial = i
		obj.x_start = posX
		obj.y_start = posY
		//obj.alarm[1] = 1
		posX += n
		
		if (i==max_cant_objetos/2){
			posX = 424
			posY = 116  //54
		}
	}

#endregion


//Crea el objeto que dibuja las cuadrillas
instance_create_depth(0,0,depth+1,obj_contr_cuadriculas_editor)