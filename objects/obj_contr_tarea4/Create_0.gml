/// @description Crea objetos, variables y valores
// Puede escribir su código en este editor


global.jugabilidad = false
global.tarea_completada = false
num_tarea = noone
saboteada = false
sonido_tarea_completada = false

#region Crea la camara (BORRAR DSP)
	/*global.tarea4 = false
	global.cant_tareas_completadas = 0 
	global.alfaFondo = 0.65
	global.camara = camera_create_view((room_width/2)-640,(room_height/2)-360,1280,720,0,-1,-1,-1,640,360)
	view_camera[0] = global.camara*/
#endregion

#region Propiedades de la camara
	cam_x = camera_get_view_x(view_camera[0]) 
	cam_y = camera_get_view_y(view_camera[0]) 
	cam_ancho = camera_get_view_width(view_camera[0])
	cam_alto = camera_get_view_height(view_camera[0])
#endregion


#region Variables
	randomize()
	presionar = false
	color_linea = noone
	btn_presionado = noone
	btn_unidos = 0 
	max_btn_unidos = 4
	max_cant_pos = 8
	cant_rojo = 0
	cant_azul = 0
	cant_verde = 0
	cant_amarillo = 0
	
	color = c_white
	borde = c_black
#endregion


#region crea valores y/o objetos
	btn_eliminar_tarea = instance_create_layer(cam_x+100,cam_y+75, "Interfaz_tareas", obj_btn_eliminar_tarea)
	btn_eliminar_tarea.tarea = id
	
	
	for(i=0 ; i<max_cant_pos ; i++){
		//Contr pos X
		if (i<3) var posX = cam_x+400
		else if (i>=3 and i<5) var posX = cam_x+640
		else if (i>=5 and i<8) var posX = cam_x+880
		
		//Contr pos Y
		if (i==0 or i==3 or i==5) var posY = cam_y+224
		else if (i==1 or i==6) var posY = cam_y+400
		else if (i==2 or i==4 or i==7) var posY = cam_y+576
		
		var btn = instance_create_layer(posX,posY, "Interfaz_tareas", obj_btn_conectar_linea)
		var seleccion_color = false
		
		#region Elige un color
		while(seleccion_color == false){
			var contr_color_btn = irandom_range(1,max_cant_pos/2)
			switch(contr_color_btn){
				//Color rojo
				case 1: 
				if (cant_rojo<2){
						cant_rojo++
						var color_btn = make_color_rgb(255,69,69)
						seleccion_color=true
				} 
				break
				//Color azul
				case 2: 
				if (cant_azul<2){
						cant_azul++
						var color_btn = make_color_rgb(67,130,255)
						seleccion_color=true
				} 
				break
				//Color verde
				case 3: 
				if (cant_verde<2){
						cant_verde++
						var color_btn = make_color_rgb(69,255,69)
						seleccion_color=true
				} 
				break
				//Color Amarillo
				case 4: 
				if (cant_amarillo<2){
						cant_amarillo++
						var color_btn = make_color_rgb(255,163,72)
						seleccion_color=true
				} 
				break
			}
		}
		#endregion
		
		btn.contr_color = contr_color_btn
		btn.color = color_btn
	}
	
#endregion


/// sonido
if global.musica == true
{ sonido = audio_play_sound(snd_electricidad,100,true) }