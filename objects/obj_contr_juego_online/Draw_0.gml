/// @description Dibuja la interfaz
// Puede escribir su código en este editor
if !(global.editor) {


#region Propiedades de la camara
	cam_x = camera_get_view_x(view_camera[0]) 
	cam_y = camera_get_view_y(view_camera[0]) 
	cam_ancho = camera_get_view_width(view_camera[0])
	cam_alto = camera_get_view_height(view_camera[0])
#endregion


#region  Dibuja la interfaz en la intro
if (global.estadoJuego == "intro")
{
	#region  Contr la vista del mapa
		var posX = cam_x+640
		if (global.jugador_tipo == "IMPOSTOR" or global.jugador_tipo == "COMPLICE") var posY = cam_y+310
		else if (global.jugador_tipo == "TRIPULANTE" or global.jugador_tipo == "DETECTIVE") var posY = cam_y+190
		
		switch(global.tipo_mapa_a_jugar){
			case 1: draw_sprite(spr_vista_mapas,0,posX,posY) break
			case 2: draw_sprite(spr_vista_mapas,1,posX,posY) break
			case 3: draw_sprite(spr_vista_mapas,2,posX,posY) break
			default: draw_sprite(spr_vista_mapas,3,posX,posY) break
		}
	#endregion
	
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_grande)
	var posX = cam_x+640
	var posY = cam_y+140   //140
	
	#region Dibuja la interfaz cuando es el impostor
	if (global.jugador_tipo == "IMPOSTOR"){
		
		#region Dibuja el fondo y las luces
			draw_sprite(spr_fondo_intro_asesinos,0, cam_x, cam_y)
			draw_sprite(spr_intro_roles_luces,1, cam_x, cam_y)
		#endregion
		
		#region Dibuja el titulo
		draw_set_font(fnt_muy_grande)
		var color = make_color_rgb(255,97,97)
		var borde = make_color_rgb(150,0,0)
		switch(os_get_language()) {
			case "es": draw_text_outline("ASESINO",posX,posY,borde,1,1,color) break;
			case "pt": draw_text_outline("ASSASSINO",posX,posY,borde,1,1,color) break;
			case "it": draw_text_outline("KILLER",posX,posY,borde,1,1,color) break;
			default: draw_text_outline("KILLER",posX,posY,borde,1,1,color) break;
		}
		#endregion
		
		#region  Dibuja a los impostores
		var cant_impostores = ds_list_size(global.impostores_lista)
		switch(cant_impostores){
			case 2: var posX_jug = posX-150 break
			case 3: var posX_jug = posX-300 break
			case 4: var posX_jug = posX-450 break
			default: var posX_jug = posX break
		}
		var posY_jug = posY+400
		var n = 300
		var escala = 1.5
		for (i=0 ; i<cant_impostores ; i++){
			var impostor_id = real(ds_list_find_value(global.impostores_lista,i))
			
			scr_contr_dibujo_parado_idPers(impostor_id,posX_jug,posY_jug,escala,1)

			posX_jug += n
		}
		#endregion
		
		#region Dibuja el objetivo
			var posX = cam_x+640
			var posY_objetivo = posY+75
			draw_set_font(fnt_normal)
			switch(os_get_language()) {
				case "es": draw_text_outline("ASESINA A LOS EXPLORADORES Y EVITA SER DESCUBIERTO",posX,posY_objetivo,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("MATE EXPLORADORES E EVITE SER DESCOBERTO",posX,posY_objetivo,c_black,1,1,c_white) break;
				case "it": draw_text_outline("UCCIDI ESPLORATORI ED EVITA DI ESSERE SCOPERTI",posX,posY_objetivo,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_chica_ru) draw_text_outline("УБИВАЙТЕ ИГРОКОВ И ИЗБЕГАЙТЕ ОБНАРУЖЕНИЯ",posX,posY_objetivo,c_black,1,1,c_white) break;
				default: draw_text_outline("KILL EXPLORERS AND AVOID BEING DISCOVERED",posX,posY_objetivo,c_black,1,1,c_white) break;
			}
		#endregion
		
		#region Dibuja el objetivo 2
			var posX = cam_x+640
			var posY_objetivo = (cam_y+cam_alto)-50
			draw_set_font(fnt_normal)
			switch(os_get_language()) {
				case "es": draw_text_outline("SABOTEA SUS TAREAS, TE SERÁ MÁS FÁCIL...",posX,posY_objetivo,borde,1,1,color) break;
				case "pt": draw_text_outline("QUEBRE SUAS TAREFAS, SERÁ MAIS FÁCIL ...",posX,posY_objetivo,borde,1,1,color) break;
				case "it": draw_text_outline("BREAK YOUR TASKS, IT WILL BE EASIER...",posX,posY_objetivo,borde,1,1,color) break;
				case "ru": draw_set_font(fnt_chica_ru) draw_text_outline("РАЗБИРАЙТЕ ЗАДАЧИ..",posX,posY_objetivo,borde,1,1,color) break;
				default: draw_text_outline("BREAK YOUR TASKS, IT WILL BE EASIER...",posX,posY_objetivo,borde,1,1,color) break;
			}
		#endregion
	}
	#endregion
	
	#region Dibuja la interfaz cuando es un tripulante
	else if (global.jugador_tipo == "TRIPULANTE"){
		
		#region Dibuja el fondo y las luces
			draw_sprite(spr_fondo_intro_tripulantes,0, cam_x, cam_y)
			draw_sprite(spr_intro_roles_luces,0, cam_x, cam_y)
		#endregion
		
		#region DIBUJA EL TITULO
			draw_set_font(fnt_muy_grande)
			var color = make_color_rgb(90,220,255)
			var borde = make_color_rgb(0,66,89)
			switch(os_get_language()) {
				case "es": draw_text_outline("TRIPULANTE",posX,posY,borde,1,1,color) break;
				case "pt": draw_text_outline("TRIPULAÇÃO",posX,posY,borde,1,1,color) break;
				case "it": draw_text_outline("EQUIPAGGIO",posX,posY,borde,1,1,color) break;
				default: draw_text_outline("CREW",posX,posY,borde,1,1,color) break;
			}
		#endregion
		
		#region DIbuja a los jugadores
			var escala = 1.5
			var cant_jugadores = ds_list_size(global.jugadores_lista)
			var n = 150
			//if (cant_jugadores<=10) var n = 100
			//else var n = 75  //75
			
			#region COntr la pos X
				var cant_por_fila = 5
				if (cant_jugadores<2) var posX_jug = posX
				else if (cant_jugadores==2) var posX_jug = posX-((n/2)*(cant_jugadores/2))
				else if (cant_jugadores>2) var posX_jug = posX-(n*(cant_por_fila/2))
			#endregion
			
			#region Contr la pos Y
				if (cant_jugadores<=5) var posY_jug = posY+350
				else if (cant_jugadores>5) var posY_jug = posY+225
			#endregion
			
			scr_contr_dibujos_todos_pers(n,posX_jug,posY_jug,escala,1)

		#endregion
		
		#region Dibuja el objetivo
			var posX = cam_x+640
			var posY_objetivo = posY+75
			draw_set_font(fnt_normal)
			switch(os_get_language()) {
				case "es": draw_text_outline("COMPLETA LAS TAREAS Y DESCUBRE AL ASESINO",posX,posY_objetivo,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("TERMINE AS TAREFAS E DESCUBRA O ASSASSINO",posX,posY_objetivo,c_black,1,1,c_white) break;
				case "it": draw_text_outline("RISOLVI TUTTI I COMPITI E SCOPRI IL KILLER",posX,posY_objetivo,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_chica_ru) draw_text_outline("ВЫПОЛНИТЕ ЗАДАЧИ И ОТКРОЙТЕ УБИЙЦУ",posX,posY_objetivo,c_black,1,1,c_white) break;
				default: draw_text_outline("COMPLETE THE TASKS AND DISCOVER THE KILLER",posX,posY_objetivo,c_black,1,1,c_white) break;
			}
		#endregion
		
		#region Dibuja el objetivo 2
			var posX = cam_x+640
			var posY_objetivo = (cam_y+cam_alto)-50
			draw_set_font(fnt_normal)
			switch(os_get_language()) {
				case "es": draw_text_outline("TRABAJA DURO Y MANTENTE ALERTA",posX,posY_objetivo,borde,1,1,color) break;
				case "pt": draw_text_outline("TRABALHE DURAMENTE E FIQUE ALERTA",posX,posY_objetivo,borde,1,1,color) break;
				case "it": draw_text_outline("ESSERE SULL'ALLERTA.",posX,posY_objetivo,borde,1,1,color) break;
				case "ru": draw_set_font(fnt_chica_ru) draw_text_outline("РАБОТАЙТЕ УСКОРЕННО И БУДЬТЕ БДИТЕЛЬНЫМ",posX,posY_objetivo,borde,1,1,color) break;
				default: draw_text_outline("WORK HARD AND STAY ALERT",posX,posY_objetivo,borde,1,1,color) break;
			}
		#endregion
	}
	#endregion
	
	#region Dibuja la interfaz cuando es el detective
	if (global.jugador_tipo == "DETECTIVE"){
		
		#region Dibuja el fondo y las luces
			draw_sprite(spr_fondo_intro_tripulantes,0, cam_x, cam_y)
			draw_sprite(spr_intro_roles_luces,2, cam_x, cam_y)
		#endregion
		
		#region Dibuja el titulo
		draw_set_font(fnt_muy_grande)
		var color = make_color_rgb(119,255,95)
		var borde = make_color_rgb(0,135,0)
		switch(os_get_language()) {
			case "es": draw_text_outline("DETECTIVE",posX,posY,borde,1,1,color) break;
			case "pt": draw_text_outline("DETETIVE",posX,posY,borde,1,1,color) break;
			case "it": draw_text_outline("DETECTIVE",posX,posY,borde,1,1,color) break;
			default: draw_text_outline("DETECTIVE",posX,posY,borde,1,1,color) break;
		}
		#endregion
		
		#region  Dibuja a los detectives
		var cant_detective = ds_list_size(global.detective_lista)
		switch(cant_detective){
			case 2: var posX_jug = posX-150 break
			case 3: var posX_jug = posX-300 break
			default: var posX_jug = posX break
		}
		//posX_jug = posX
		var escala = 1.5
		var posY_jug = posY+350
		var n = 300
		for (i=0 ; i<cant_detective ; i++){
			var detective_id = real(ds_list_find_value(global.detective_lista,i))
			
			scr_contr_dibujo_parado_idPers(detective_id,posX_jug,posY_jug,escala,1)

			posX_jug += n
		}
		#endregion
		
		#region Dibuja el objetivo
			var posX = cam_x+640
			var posY_objetivo = posY+75
			draw_set_font(fnt_normal)
			switch(os_get_language()) {
				case "es": draw_text_outline("ENCUENTRE PISTAS Y DESCUBRA AL ASESINO",posX,posY_objetivo,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("ENCONTRE PISTAS E DESCUBRA O ASSASSINO ",posX,posY_objetivo,c_black,1,1,c_white) break;
				case "it": draw_text_outline("TROVA INDIZI E SCOPRI IL KILLER",posX,posY_objetivo,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_chica_ru) draw_text_outline("НАЙДИТЕ ТРЕКИ И ОТКРОЙТЕ УБИЙЦУ",posX,posY_objetivo,c_black,1,1,c_white) break;
				default: draw_text_outline("FIND CLUES AND DISCOVER THE KILLER",posX,posY_objetivo,c_black,1,1,c_white) break;
			}
		#endregion
		
		#region Dibuja el objetivo 2
			var posX = cam_x+640
			var posY_objetivo = (cam_y+cam_alto)-50
			draw_set_font(fnt_normal)
			switch(os_get_language()) {
				case "es": draw_text_outline("TU VOTO VALE DOBLE",posX,posY_objetivo,borde,1,1,color) break;
				case "pt": draw_text_outline("SEU VOTO VALE A PENA DUPLO",posX,posY_objetivo,borde,1,1,color) break;
				case "it": draw_text_outline("IL TUO VOTO VALE IL DOPPIO",posX,posY_objetivo,borde,1,1,color) break;
				case "ru": draw_set_font(fnt_chica_ru) draw_text_outline("ВАШ ГОЛОС СТОИТ ДВОЙНЫМ",posX,posY_objetivo,borde,1,1,color) break;
				default: draw_text_outline("YOUR VOTE IS WORTH DOUBLE",posX,posY_objetivo,borde,1,1,color) break;
			}
		#endregion
	}
	#endregion
	
	#region Dibuja la interfaz cuando es el complice
	if (global.jugador_tipo == "COMPLICE"){
		
		#region Dibuja el fondo y las luces
			draw_sprite(spr_fondo_intro_asesinos,0, cam_x, cam_y)
			draw_sprite(spr_intro_roles_luces,3, cam_x, cam_y)
		#endregion
		
		#region Dibuja el titulo
		draw_set_font(fnt_muy_grande)
		var color = make_color_rgb(255,137,31)
		var borde = make_color_rgb(147,66,0)
		switch(os_get_language()) {
			case "es": draw_text_outline("CÓMPLICE",posX,posY,borde,1,1,color) break;
			case "pt": draw_text_outline("COMPLICE",posX,posY,borde,1,1,color) break;
			case "it": draw_text_outline("COMPLICI",posX,posY,borde,1,1,color) break;
			default: draw_text_outline("ACCOMPLICE",posX,posY,borde,1,1,color) break;
		}
		#endregion
		
		#region  Dibuja a los complices
		var cant_complices = ds_list_size(global.complices_lista)
		switch(cant_complices){
			case 2: var posX_jug = posX-150 break
			case 3: var posX_jug = posX-300 break
			default: var posX_jug = posX break
		}
		//posX_jug = posX
		var escala = 1.5
		var posY_jug = posY+400
		var n = 300
		for (i=0 ; i<cant_complices ; i++){
			var complice_id = real(ds_list_find_value(global.complices_lista,i))
			
			scr_contr_dibujo_parado_idPers(complice_id,posX_jug,posY_jug,escala,1)

			posX_jug += n
		}
		#endregion
		
		#region Dibuja el objetivo
			var posX = cam_x+640
			var posY_objetivo = posY+75
			draw_set_font(fnt_normal)
			switch(os_get_language()) {
				case "es": draw_text_outline("LIMPIA LAS HUELLAS Y ESCONDE LOS CADÁVERES",posX,posY_objetivo,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("LIMPE A CENA DO CRIME E OCULTE OS CORPOS",posX,posY_objetivo,c_black,1,1,c_white) break;
				case "it": draw_text_outline("PULISCI LE IMPRONTE E NASCONDI I CADAVERI",posX,posY_objetivo,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_chica_ru) draw_text_outline("ОЧИСТИТЕ СЛЕДЫ И СКРЫВАЙТЕ ТЕЛО",posX,posY_objetivo,c_black,1,1,c_white) break;
				default: draw_text_outline("CLEAN THE FOOTPRINTS AND HIDE THE BODIES",posX,posY_objetivo,c_black,1,1,c_white) break;
			}
		#endregion
		
		#region Dibuja el objetivo 2
			var posX = cam_x+640
			var posY_objetivo = (cam_y+cam_alto)-50
			draw_set_font(fnt_normal)
			switch(os_get_language()) {
				case "es": draw_text_outline("RESTAS UN VOTO AJENO",posX,posY_objetivo,borde,1,1,color) break;
				case "pt": draw_text_outline("VOCÊ SUBTRAI UM VOTO",posX,posY_objetivo,borde,1,1,color) break;
				case "it": draw_text_outline("SOTTRARRE 1 VOTO",posX,posY_objetivo,borde,1,1,color) break;
				case "ru": draw_set_font(fnt_chica_ru) draw_text_outline("ВЫЧИТАЙТЕ 1 ГОЛОС",posX,posY_objetivo,borde,1,1,color) break;
				default: draw_text_outline("YOUR VOTE IS WORTH DOUBLE",posX,posY_objetivo,borde,1,1,color) break;
			}
		#endregion
	}
	#endregion
	
}
#endregion


#region Dibuja la interfaz cuando se esta jugando
	if (global.estadoJuego == "jugando")
	{
		if (global.jugabilidad)
		{
		
		#region Dibuja la cantidad de tareas que se hizo si es un tripulante
		if (global.jugador_tipo=="TRIPULANTE" and global.tarea_saboteada==noone)
		{
			draw_set_halign(fa_left)
			draw_set_valign(fa_middle)
			//draw_set_font(fnt_grande)
			draw_set_font(fnt_normal)
			var posX = cam_x+20
			var posY = cam_y+50
		
			switch(os_get_language()) {
				case "es": draw_text_outline("TAREAS COMPLETADAS: "+string(global.cant_tareas_completadas)+" / "+string(global.max_tareas),posX,posY,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("TAREFAS CONCLUÍDAS: "+string(global.cant_tareas_completadas)+" / "+string(global.max_tareas),posX,posY,c_black,1,1,c_white) break;
				case "it": draw_text_outline("COMPITI COMPLETATI: "+string(global.cant_tareas_completadas)+" / "+string(global.max_tareas),posX,posY,c_black,1,1,c_white) break;
				//case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ЗАДАЧИ ВЫПОЛНЕНЫ: "+string(global.cant_tareas_completadas)+" / "+string(global.max_tareas),posX,posY,c_black,1,1,c_white) break;
				default: draw_text_outline("TASKS COMPLETED: "+string(global.cant_tareas_completadas)+" / "+string(global.max_tareas),posX,posY,c_black,1,1,c_white) break;
			}
		}	
		
		#endregion
		
		#region Dibuja el objetivo del detective
		if (global.jugador_tipo=="DETECTIVE")
		{
			draw_set_halign(fa_left)
			draw_set_valign(fa_middle)
			//draw_set_font(fnt_grande)
			draw_set_font(fnt_normal)
			var posX = cam_x+20
			var posY = cam_y+50
			
			if (global.tarea_saboteada==noone){
				switch(os_get_language()) {
					case "es": draw_text_outline("BUSCA PISTAS DEL ASESINO",posX,posY,c_black,1,1,c_white) break;
					case "pt": draw_text_outline("PROCURE AS PISTAS DO ASSASSINO",posX,posY,c_black,1,1,c_white) break;
					case "it": draw_text_outline("CERCA INDIZI DEL KILLER",posX,posY,c_black,1,1,c_white) break;
					//case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ЗАДАЧИ ВЫПОЛНЕНЫ: "+string(global.cant_tareas_completadas),posX,posY,c_black,1,1,c_white) break;
					default: draw_text_outline("SEEK CLUES OF THE KILLER",posX,posY,c_black,1,1,c_white) break;
				}
			}
			
		}	
		#endregion
		
		#region Dibuja el objetivo del complice
		if (global.jugador_tipo=="COMPLICE" and global.tarea_saboteada==noone)
		{
			draw_set_halign(fa_left)
			draw_set_valign(fa_middle)
			//draw_set_font(fnt_grande)
			draw_set_font(fnt_normal)
			var posX = cam_x+20
			var posY = cam_y+50
		
			if (global.tarea_saboteada==noone){
				switch(os_get_language()) {
					case "es": draw_text_outline("LIMPIA LAS PISTAS DEL ASESINO",posX,posY,c_black,1,1,c_white) break;
					case "pt": draw_text_outline("LIMPE AS PISTAS DO ASSASSINO",posX,posY,c_black,1,1,c_white) break;
					case "it": draw_text_outline("PULIRE LE IMPRONTE DEL KILLER",posX,posY,c_black,1,1,c_white) break;
					//case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ЗАДАЧИ ВЫПОЛНЕНЫ: "+string(global.cant_tareas_completadas),posX,posY,c_black,1,1,c_white) break;
					default: draw_text_outline("CLEAN THE KILLER'S TRACKS",posX,posY,c_black,1,1,c_white) break;
				}
			}
			else {
				switch(os_get_language()) {
					case "es": draw_text_outline("AYUDA AL ASESINO Y NO ARREGLES LA TAREA",posX,posY,c_black,1,1,c_white) break;
					case "pt": draw_text_outline("AJUDE O ASSASSINO E NÃO CORRIGA A TAREFA",posX,posY,c_black,1,1,c_white) break;
					case "it": draw_text_outline("AIUTA IL KILLER E NON RISOLVERE IL COMPITO",posX,posY,c_black,1,1,c_white) break;
					//case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ЗАДАЧИ ВЫПОЛНЕНЫ: "+string(global.cant_tareas_completadas),posX,posY,c_black,1,1,c_white) break;
					default: draw_text_outline("HELP THE KILLER AND DON'T FIX THE TASK",posX,posY,c_black,1,1,c_white) break;
				}
			}
		}	
		#endregion
		
		#region Dibuja si hay tarea saboteada si es un asesino
		if (global.jugador_tipo=="IMPOSTOR")
		{
			draw_set_halign(fa_left)
			draw_set_valign(fa_middle)
			//draw_set_font(fnt_grande)
			draw_set_font(fnt_normal)
			var posX = cam_x+20
			var posY = cam_y+50
		
			if (global.tarea_saboteada==noone){
				if (instance_exists(obj_personaje) and obj_personaje.mostrar_pistas==true and obj_personaje.muerto==false){
					switch(os_get_language()) {
						case "es": draw_text_outline("SOLO EL DETECTIVE PUEDE VER TUS HUELLAS",posX,posY,c_black,1,1,c_white) break;
						case "pt": draw_text_outline("SÓ O DETETIVE PODE VER SUAS PEGADAS",posX,posY,c_black,1,1,c_white) break;
						case "it": draw_text_outline("SOLO IL DETECTIVE PU VEDERE LE TUE IMPRONTE",posX,posY,c_black,1,1,c_white) break;
						//case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ПЕРЕРЫВ ЗАДАЧИ",posX,posY,c_black,1,1,c_white) break;
						default: draw_text_outline("ONLY THE DETECTIVE CAN SEE YOUR FOOTPRINTS",posX,posY,c_black,1,1,c_white) break;
					}
				}
				else {
					switch(os_get_language()) {
						case "es": draw_text_outline("SABOTEA UNA TAREA",posX,posY,c_black,1,1,c_white) break;
						case "pt": draw_text_outline("SABOTATE UMA TAREFA",posX,posY,c_black,1,1,c_white) break;
						case "it": draw_text_outline("SABOTA UN COMPITO",posX,posY,c_black,1,1,c_white) break;
						//case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ПЕРЕРЫВ ЗАДАЧИ",posX,posY,c_black,1,1,c_white) break;
						default: draw_text_outline("SABOTATE A TASK",posX,posY,c_black,1,1,c_white) break;
					}
				}
			}
			else {
				switch(os_get_language()) {
					case "es": draw_text_outline("HAS SABOTEADO UNA TAREA",posX,posY,c_black,1,1,c_red) break;
					case "pt": draw_text_outline("VOCÊ SABOTU UMA TAREFA",posX,posY,c_black,1,1,c_red) break;
					case "it": draw_text_outline("HAI SABOTATO UN COMPITO",posX,posY,c_black,1,1,c_red) break;
					//case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ПЕРЕРЫВ ЗАДАЧИ",posX,posY,c_black,1,1,c_white) break;
					default: draw_text_outline("YOU HAVE SABOTTED A TASK",posX,posY,c_black,1,1,c_red) break;
				}
			}
		}	
		#endregion
		
		#region Dibuja la flecha que indica donde hay una tarea saboteada
			if (global.tarea_saboteada!=noone and instance_exists(obj_personaje))
			{
				if (global.jugador_tipo=="TRIPULANTE" or global.jugador_tipo=="DETECTIVE"){
					draw_set_halign(fa_left)
					draw_set_valign(fa_middle)
					//draw_set_font(fnt_grande)
					draw_set_font(fnt_normal)
					var posX = cam_x+20
					var posY = cam_y+50
					switch(os_get_language()) {
						case "es": draw_text_outline("URGENTE: ARREGLAR TAREA PARA NO PERDER!",posX,posY,c_black,1,1,c_red) break;
						case "pt": draw_text_outline("URGENTE: CORRIGIR TAREFA PARA NÃO PERDER!",posX,posY,c_black,1,1,c_red) break;
						case "it": draw_text_outline("URGENTE: FISSARE IL COMPITO PER NON PERDERE!",posX,posY,c_black,1,1,c_red) break;
						//case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("СРОЧНО: ИСПРАВИТЬ ЗАДАЧУ!",posX,posY,c_black,1,1,c_red) break;
						default: draw_text_outline("URGENT: FIX TASK TO NOT LOSE!",posX,posY,c_black,1,1,c_red) break;
					}
				}
			
				//Dibuja la flecha
				if (global.tarea_saboteada_x != noone and global.tarea_saboteada_y != noone)
				{
					var n = 100
					var radio = 200
					var posX_flecha=0
					var posY_flecha=0
					var angulo = point_direction(obj_personaje.x,obj_personaje.y,global.tarea_saboteada_x,global.tarea_saboteada_y)
					var distance = point_distance(obj_personaje.x,obj_personaje.y,global.tarea_saboteada_x,global.tarea_saboteada_y)
					
					if (distance>radio){
						//Pos X
						var contr_posX = (global.tarea_saboteada_x-obj_personaje.x)
						if (contr_posX<(-cam_ancho/2)+n) posX_flecha=(cam_x+n)
						else if (contr_posX>(cam_ancho/2)-n) posX_flecha=((cam_x+cam_ancho)-n)
						else posX_flecha=global.tarea_saboteada_x
					
						//Pos Y
						var contr_posY = (global.tarea_saboteada_y-obj_personaje.y)
						if (contr_posY<(-cam_alto/2)+n) posY_flecha=(cam_y+n)
						else if (contr_posY>(cam_alto/2)-n) posY_flecha=((cam_y+cam_alto)-n)
						else posY_flecha=global.tarea_saboteada_y
					
						draw_sprite_ext(spr_flecha_tarea_saboteada,0,posX_flecha,posY_flecha,1,1,angulo,c_white,1)
					}
				}
			}
		#endregion

		#region Dibuja la cant de jugadores
			var cantJugadores = ds_list_size(global.jugadores_lista)
			
			draw_set_halign(fa_left)
			draw_set_valign(fa_middle)
			//draw_set_font(fnt_grande)
			draw_set_font(fnt_normal)
			var posX = cam_x+20
			var posY = cam_y+100
		
			switch(os_get_language()) {
				case "es": draw_text_outline("JUGADORES: "+string(cantJugadores) + " / "+string(global.cant_jugadores_sala),posX,posY,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("JOGADORES: "+string(cantJugadores) + " / "+string(global.cant_jugadores_sala),posX,posY,c_black,1,1,c_white) break;
				case "it": draw_text_outline("GIOCATORI: "+string(cantJugadores) + " / "+string(global.cant_jugadores_sala),posX,posY,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ИГРОКИ: "+string(cantJugadores) + " / "+string(global.cant_jugadores_sala),posX,posY,c_black,1,1,c_white) break;
				default: draw_text_outline("PLAYERS: "+string(cantJugadores) + " / "+string(global.cant_jugadores_sala),posX,posY,c_black,1,1,c_white) break;
			}
		#endregion
		
		#region Contr cantidades a mostrar
			var cant_asesinos = 0
			var cant_tripulantes = 0
			var cant_detective = 0
			var cant_complices = 0
			var cant_eliminados = 0
			var cantJugadores = ds_list_size(global.jugadores_lista)
			for(i=0 ; i<cantJugadores ; i++){
				var jugador = ds_list_find_value(global.jugadores_lista,i)
				var inst = ds_map_find_value(jugador,"idObjeto")
				if instance_exists(inst){
					if (inst.muerto==true) cant_eliminados++
					if (inst.impostor==true) cant_asesinos++ 
					if (inst.detective==true) cant_detective++
					if (inst.complice==true) cant_complices++
					if (inst.impostor==false and inst.detective==false and inst.complice==false) cant_tripulantes++
				}
			}
		#endregion
		
		#region Dibuja la cant de tripulantes
			
			draw_set_halign(fa_left)
			draw_set_valign(fa_middle)
			//draw_set_font(fnt_grande)
			draw_set_font(fnt_normal)
			var posX = cam_x+20
			var posY = cam_y+150
		
			switch(os_get_language()) {
				case "es": draw_text_outline("TRIPULANTES: "+string(cant_tripulantes),posX,posY,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("CREWS: "+string(cant_tripulantes),posX,posY,c_black,1,1,c_white) break;
				case "it": draw_text_outline("EQUIPAGGI: "+string(cant_tripulantes),posX,posY,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ЭКИПАЖИ: "+string(cant_tripulantes),posX,posY,c_black,1,1,c_white) break;
				default: draw_text_outline("CREWS: "+string(cant_tripulantes),posX,posY,c_black,1,1,c_white) break;
			}
		#endregion
		
		#region Dibuja la cant de asesinos
			
			draw_set_halign(fa_left)
			draw_set_valign(fa_middle)
			//draw_set_font(fnt_grande)
			draw_set_font(fnt_normal)
			var posX = cam_x+20
			var posY = cam_y+200
		
			switch(os_get_language()) {
				case "es": draw_text_outline("ASESINOS: "+string(cant_asesinos),posX,posY,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("ASSASSINOS: "+string(cant_asesinos),posX,posY,c_black,1,1,c_white) break;
				case "it": draw_text_outline("ASSASSINI: "+string(cant_asesinos),posX,posY,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("Убийцы: "+string(cant_asesinos),posX,posY,c_black,1,1,c_white) break;
				default: draw_text_outline("KILLERS: "+string(cant_asesinos),posX,posY,c_black,1,1,c_white) break;
			}
		#endregion
		
		#region Dibuja la cant de detective
			
			draw_set_halign(fa_left)
			draw_set_valign(fa_middle)
			//draw_set_font(fnt_grande)
			draw_set_font(fnt_normal)
			var posX = cam_x+20
			var posY = cam_y+250
		
			switch(os_get_language()) {
				case "es": draw_text_outline("DETECTIVE: "+string(cant_detective),posX,posY,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("DETETIVE: "+string(cant_detective),posX,posY,c_black,1,1,c_white) break;
				case "it": draw_text_outline("DETETIVE: "+string(cant_detective),posX,posY,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ДЕТЕКТИВ: "+string(cant_detective),posX,posY,c_black,1,1,c_white) break;
				default: draw_text_outline("DETECTIVE: "+string(cant_detective),posX,posY,c_black,1,1,c_white) break;
			}
		#endregion
		
		#region Dibuja la cant de complices
			
			draw_set_halign(fa_left)
			draw_set_valign(fa_middle)
			//draw_set_font(fnt_grande)
			draw_set_font(fnt_normal)
			var posX = cam_x+20
			var posY = cam_y+300
		
			switch(os_get_language()) {
				case "es": draw_text_outline("COMPLICES: "+string(cant_complices),posX,posY,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("ACOMPLICES: "+string(cant_complices),posX,posY,c_black,1,1,c_white) break;
				case "it": draw_text_outline("COMPLICI: "+string(cant_complices),posX,posY,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("сообщник: "+string(cant_complices),posX,posY,c_black,1,1,c_white) break;
				default: draw_text_outline("ACCOMPLICES: "+string(cant_complices),posX,posY,c_black,1,1,c_white) break;
			}
		#endregion
		
		#region Dibuja la cant de eliminados
			
			draw_set_halign(fa_left)
			draw_set_valign(fa_middle)
			//draw_set_font(fnt_grande)
			draw_set_font(fnt_normal)
			var posX = cam_x+20
			var posY = cam_y+350
		
			switch(os_get_language()) {
				case "es": draw_text_outline("ELIMINADOS: "+string(cant_eliminados),posX,posY,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("ELIMINADOS: "+string(cant_eliminados),posX,posY,c_black,1,1,c_white) break;
				case "it": draw_text_outline("ELIMINATI: "+string(cant_eliminados),posX,posY,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("УДАЛЕНЫ: "+string(cant_eliminados),posX,posY,c_black,1,1,c_white) break;
				default: draw_text_outline("ELIMINATED: "+string(cant_eliminados),posX,posY,c_black,1,1,c_white) break;
			}
		#endregion
		
		}
		
	}
#endregion


#region Dibuja la interfaz cuando se reporta un cuerpo
	else if (global.estadoJuego == "cuerpo_reportado")
	{
		// Posiciones
		var posX = cam_x+180
		var posY = cam_y+390
		var escala_cuerpo = 1.5
		
		//Dibuja el fondo
		draw_sprite_ext(spr_fondo_reportar_cuerpo,0,posX,posY,escala_anim_reportar_cuerpo, escala_anim_reportar_cuerpo, 0, c_white, 1)
		
		// Dibuja al personaje reportando
		draw_sprite_ext(spr_personaje_reportando,0,posX+600,cam_y+360,1, 1, 0, c_white, 1)
		
		// Dibuja el cuerpo reportado
		scr_contr_dibujo_muerto_idPers(global.id_jugador_reportado,posX-51,posY-30,escala_cuerpo)
		
	}
#endregion


#region Dibuja la interfaz cuando se aprieta el boton de emergencia
	else if (global.estadoJuego == "boton_emergencia_apretado")
	{
		draw_sprite(spr_fondo_btn_emergencia,index_anim_btn_emergencia,cam_x,cam_y)
	}
#endregion


#region Dibuja la interfaz cuando se entra en la discusion
	else if (global.estadoJuego == "comenzar_discusion"){
		draw_set_alpha(1)
		draw_rectangle_color(cam_x,cam_y,cam_x+cam_ancho,(cam_y+cam_alto)+100,c_black,c_black,c_black,c_black,false)
		draw_set_alpha(1)
	
	}
#endregion


#region  Dibuja la interfaz cuando ganan los impostores
else if (global.estadoJuego == "juego_terminado_impostores_ganadores")
{
		
	if (mostrarPantallaFinal){
		//Contr el fondo
		draw_sprite_ext(spr_fondo_victoria_asesinos,0, cam_x, cam_y,1,1,0,c_white,1)
		
		#region Dibuja las chispas
			if (dibujar_efecto) scr_dibuja_chispas()
		#endregion
		
		#region Crea Variables y ajustes
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)
			//draw_set_font(fnt_grande)
			draw_set_font(fnt_muy_grande)
			var alfaLetras = 1
			var posX = cam_x+640
			var posY = cam_y+140
			var posY2 = posY+75
			var n = 150
		#endregion
	
		#region Dibuja las palabras
		if (global.jugador_tipo == "IMPOSTOR" or global.jugador_tipo == "COMPLICE"){
			
			#region Dibuja el titulo
				var color = make_color_rgb(119,255,95)
				var borde = make_color_rgb(0,135,0)
				switch(os_get_language()) {
					case "es": draw_text_outline("¡MISIÓN GANADA!",posX,posY,borde,alfaLetras,alfaLetras,color) break;
					case "pt": draw_text_outline("MISSÃO GANHADA!",posX,posY,borde,alfaLetras,alfaLetras,color) break;
					case "it": draw_text_outline("MISSIONE OTTENUTA!",posX,posY,borde,alfaLetras,alfaLetras,color) break;
					case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("МИССИЯ ЗАРАБОТАЛА!",posX,posY,borde,alfaLetras,alfaLetras,color) break;
					default: draw_text_outline("MISSION EARNED!",posX,posY,borde,alfaLetras,alfaLetras,color) break;
				}
			#endregion
			
			#region Dibuja el texto de la IA
				draw_set_font(fnt_normal)
				var color = make_color_rgb(255,97,97)
				var borde = make_color_rgb(150,0,0)
				var posY_IA = (cam_y+cam_alto)-50
				switch(os_get_language()) {
					case "es": draw_text_outline("¡SABÍA QUE MIS CHICOS LO LOGRARÍAN!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					case "pt": draw_text_outline("PARABÉNS. ASSASSINOS!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					case "it": draw_text_outline("SAPEVO CHE I MIEI RAGAZZI LO AVREBBE FATTO!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("Я ЗНАЛ, МОИ ПАРНИ СДЕЛАЮТ ЭТО!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					default: draw_text_outline("I KNEW MY GUYS WOULD MAKE IT!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
				}
			#endregion
			
		}
		else if (global.jugador_tipo == "TRIPULANTE" or global.jugador_tipo == "DETECTIVE") {
			
			#region Dibuja el titulo
			var color = make_color_rgb(255,97,97)
			var borde = make_color_rgb(150,0,0)
			switch(os_get_language()) {
				case "es": draw_text_outline("¡MISIÓN PERDIDA!",posX,posY,borde,alfaLetras,alfaLetras,color) break;
				case "pt": draw_text_outline("MISSÃO PERDIDA!",posX,posY,borde,alfaLetras,alfaLetras,color) break;
				case "it": draw_text_outline("MISSIONE PERSA!",posX,posY,borde,alfaLetras,alfaLetras,color) break;
				case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("МИССИЯ УТЕРЯНА!",posX,posY,borde,alfaLetras,alfaLetras,color) break;
				default: draw_text_outline("MISSION LOST!",posX,posY,borde,alfaLetras,alfaLetras,color) break;
			}
			#endregion
			
			#region Dibuja el texto de la IA
				draw_set_font(fnt_normal)
				var color = make_color_rgb(255,97,97)
				var borde = make_color_rgb(150,0,0)
				var posY_IA = (cam_y+cam_alto)-50
				switch(os_get_language()) {
					case "es": draw_text_outline("NO TUVIERON OPORTUNIDAD...",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					case "pt": draw_text_outline("ELES NÃO TIVERAM OPORTUNIDADE ...",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					case "it": draw_text_outline("NON AVEVANO POSSIBILITÀ ...",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("У ОНИ НЕ БЫЛО ШАНСА ...",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					default: draw_text_outline("THEY DIDN'T HAVE A CHANCE ...",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
				}
			#endregion
		}
		
		
		#endregion
	
		#region  Dibuja a los jugadores
			scr_dibuja_personajes_ganadores(posX, posY, n, false)
		#endregion
	
		#region Dibuja el motivo
			if (mensaje_juego_finalizado!=false)
			{
				var posX = cam_x+640
				//var posY = cam_y+650
				var posY = posY2
				draw_set_font(fnt_normal)
				switch(mensaje_juego_finalizado){
					case "tripulante_desconectado":
						switch(os_get_language()) {
							case "es": draw_text_outline("ÚLTIMO TRIPULANTE DESCONECTADO",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "pt": draw_text_outline("ÚLTIMO JOGADOR DA TRIPULAÇÃO DESCONECTADO",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "it": draw_text_outline("L'ULTIMO GIOCATORE DELL'EQUIPAGGIO DISCONNESSO",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "ru": draw_set_font(fnt_chica_ru) draw_text_outline("ПОСЛЕДНИЙ ИГРОК ЭКИПАЖА ОТКЛЮЧЕН",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							default: draw_text_outline("LAST PLAYER OF THE CREW DISCONNECTED",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
						}
					break
					case "tripulante_asesinado":
						switch(os_get_language()) {
							case "es": draw_text_outline("ÚLTIMO TRIPULANTE ASESINADO",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "pt": draw_text_outline("ÚLTIMO JOGADOR DA TRIPULAÇÃO MORTO",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "it": draw_text_outline("UCCISO L'ULTIMO GIOCATORE DELL'EQUIPAGGIO",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "ru": draw_set_font(fnt_chica_ru) draw_text_outline("УБИТ ПОСЛЕДНИЙ ИГРОК ЭКИПАЖА",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							default: draw_text_outline("LAST PLAYER OF THE CREW KILLED",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
						}
					break
					case "tripulante_votado":
						switch(os_get_language()) {
							case "es": draw_text_outline("ÚLTIMO TRIPULANTE ELIMINADO POR VOTACIÓN",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "pt": draw_text_outline("ÚLTIMO JOGADOR DA TRIPULAÇÃO REMOVIDO POR VOTO",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "it": draw_text_outline("ULTIMO GIOCATORE DELL'EQUIPAGGIO RIMOSSO PER VOTO",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "ru": draw_set_font(fnt_chica_ru) draw_text_outline("ПОСЛЕДНИЙ ИГРОК ЭКИПАЖА, УДАЛЕННЫЙ ГОЛОСОВАНИЕМ",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							default: draw_text_outline("LAST PLAYER OF THE CREW REMOVED BY VOTE",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
						}
					break
					case "tarea_saboteada":
						//draw_set_font(fnt_chica)
						switch(os_get_language()) {
							case "es": draw_text_outline("FINALIZÓ EL TIEMPO PARA ARREGLAR LA TAREA SABOTEADA",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "pt": draw_text_outline("ACABOU O TEMPO PARA CONSERTAR A TAREFA QUEBRADA",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "it": draw_text_outline("IL TEMPO È FINITO PER RISOLVERE IL COMPITO SABOTATO",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "ru": draw_set_font(fnt_chica_ru) draw_text_outline("ЗАДАЧА НЕ ИСПРАВЛЕНА",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							default: draw_text_outline("TIME IS FINISHED TO FIX THE SABOTTED TASK",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
						}
					break
				}
			}
		#endregion
	
		draw_set_alpha(1)
	}
}
#endregion


#region  Dibuja la interfaz cuando ganan los tripulantes
else if (global.estadoJuego == "juego_terminado_tripulantes_ganadores")
{

	if (mostrarPantallaFinal){
		//Contr el fondo
		draw_sprite_ext(spr_fondo_victoria_tripulantes,0, cam_x, cam_y,1,1,0,c_white,1)
		
		#region Crea Variables y ajustes
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)
			//draw_set_font(fnt_grande)
			draw_set_font(fnt_muy_grande)
			var alfaLetras = 1
			var posX = cam_x+640
			var posY = cam_y+140
			var posY2 = posY+75
			var n = 150
		#endregion
	
		#region Dibuja las palabras
		if (global.jugador_tipo == "IMPOSTOR" or global.jugador_tipo == "COMPLICE"){
			
			#region Dibuja el titulo
				var color = make_color_rgb(255,97,97)
				var borde = make_color_rgb(150,0,0)
				switch(os_get_language()) {
					case "es": draw_text_outline("¡MISIÓN PERDIDA!",posX,posY,borde,alfaLetras,alfaLetras,color) break;
					case "pt": draw_text_outline("MISSÃO PERDIDA!",posX,posY,borde,alfaLetras,alfaLetras,color) break;
					case "it": draw_text_outline("MISSIONE PERSA!",posX,posY,borde,alfaLetras,alfaLetras,color) break;
					case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("МИССИЯ УТЕРЯНА!",posX,posY,borde,alfaLetras,alfaLetras,color) break;
					default: draw_text_outline("MISSION LOST!",posX,posY,borde,alfaLetras,alfaLetras,color) break;
				}
			#endregion
			
			#region Dibuja el texto de la IA
				draw_set_font(fnt_normal)
				var color = make_color_rgb(90,220,255)
				var borde = make_color_rgb(0,66,89)
				var posY_IA = (cam_y+cam_alto)-50
				switch(os_get_language()) {
					case "es": draw_text_outline("EL PERSONAL CORRUPTO NO TIENE LUGAR AQUÍ",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					case "pt": draw_text_outline("A EQUIPE CORRUPTA NÃO PODE ENTRAR AQUI",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					case "it": draw_text_outline("IL PERSONALE CORROTTO NON PU ENTRARE QUI",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("КОРРУПЦИОННЫЙ ПЕРСОНАЛ НЕ МОЖЕТ ЗАЙТИ СЮДА",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					default: draw_text_outline("CORRUPT STAFF CANNOT ENTER HERE",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
				}
			#endregion
			
		}
		else if (global.jugador_tipo == "TRIPULANTE" or global.jugador_tipo == "DETECTIVE"){
			
			#region Dibuja el titulo
				var color = make_color_rgb(119,255,95)
				var borde = make_color_rgb(0,135,0)
				switch(os_get_language()) {
					case "es": draw_text_outline("¡MISIÓN GANADA!",posX,posY,borde,alfaLetras,alfaLetras,color) break;
					case "pt": draw_text_outline("MISSÃO GANHADA!",posX,posY,borde,alfaLetras,alfaLetras,color) break;
					case "it": draw_text_outline("MISSIONE OTTENUTA!",posX,posY,borde,alfaLetras,alfaLetras,color) break;
					case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("МИССИЯ ЗАРАБОТАЛА!",posX,posY,borde,alfaLetras,alfaLetras,color) break;
					default: draw_text_outline("MISSION EARNED!",posX,posY,borde,alfaLetras,alfaLetras,color) break;
				}
			#endregion
			
			#region Dibuja el texto de la IA
				draw_set_font(fnt_normal)
				var color = make_color_rgb(90,220,255)
				var borde = make_color_rgb(0,66,89)
				var posY_IA = (cam_y+cam_alto)-50
				switch(os_get_language()) {
					case "es": draw_text_outline("¡FELICITACIONES, TRIPULANTES!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					case "pt": draw_text_outline("PARABÉNS, EXPLORADORES!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					case "it": draw_text_outline("COMPLIMENTI, ESPLORATORI!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ПОЗДРАВЛЯЕМ!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					default: draw_text_outline("CONGRATULATIONS, CREWS!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
				}
			#endregion
		}
	
		#endregion
	
		#region  Dibuja a los jugadores
			scr_dibuja_personajes_ganadores(posX, posY, n, true)
		#endregion
	
		#region Dibuja el motivo
			if (mensaje_juego_finalizado!=false)
			{
				var posX = cam_x+640
				var posY = posY2
				//var posY = cam_y+650
				draw_set_font(fnt_normal)
				switch(mensaje_juego_finalizado){
					case "asesino_desconectado":
						switch(os_get_language()) {
							case "es": draw_text_outline("ÚLTIMO ASESINO DESCONECTADO",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "pt": draw_text_outline("ÚLTIMO ASSASSINO DESCONECTADO",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "it": draw_text_outline("L'ULTIMO ASSASSINO DISCONNESSO",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "ru": draw_set_font(fnt_chica_ru) draw_text_outline("ПОСЛЕДНИЙ АССАСИН ОТКЛЮЧЕН",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							default: draw_text_outline("LAST KILLER DISCONNECTED",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
						}
					break
					case "asesino_asesinado":
						switch(os_get_language()) {
							case "es": draw_text_outline("ÚLTIMO ASESINO ASESINADO",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "pt": draw_text_outline("ÚLTIMO ASSASSINO MORTO",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "it": draw_text_outline("L'ULTIMO KILLER MORTO",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "ru": draw_set_font(fnt_chica_ru) draw_text_outline("ПОСЛЕДНИЙ Убийца Убитый",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							default: draw_text_outline("LAST KILLER KILLED",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
						}
					break
					case "asesino_votado":
						switch(os_get_language()) {
							case "es": draw_text_outline("ÚLTIMO ASESINO ELIMINADO POR VOTACIÓN",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "pt": draw_text_outline("ÚLTIMO ASSASSINO REMOVIDO POR VOTO",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "it": draw_text_outline("ULTIMO KILLER RIMOSSO PER VOTO",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "ru": draw_set_font(fnt_chica_ru) draw_text_outline("ПОСЛЕДНИЙ УБИЙЦА УДАЛЕН ГОЛОСОВАНИЕМ",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							default: draw_text_outline("LAST KILLER REMOVED BY VOTE",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
						}
					break
					case "tripulantes_completaron_tareas":
						//draw_set_font(fnt_chica)
						switch(os_get_language()) {
							case "es": draw_text_outline("LA TRIPULACIÓN COMPLETÓ TODAS SUS TAREAS",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "pt": draw_text_outline("A TRIPULAÇÃO COMPLETOU TODAS AS SUAS TAREFAS",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "it": draw_text_outline("L'EQUIPAGGIO HA COMPLETATO TUTTI I SUOI COMPITI",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "ru": draw_set_font(fnt_chica_ru) draw_text_outline("ЭКИПАЖ ВЫПОЛНИЛ ВСЕ ЗАДАЧИ",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							default: draw_text_outline("THE CREW COMPLETED ALL ITS TASKS",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
						}
					break
				}
			}
		#endregion
			
		draw_set_alpha(1)
	}
}
#endregion

/*
#region Dibuja la interfaz cuando no eligen a nadie en la votacion
	else if (global.estadoJuego == "votacion_finalizada_ningun_jugador_elegido")
	{
		draw_set_alpha(1)
		draw_rectangle_color(cam_x,cam_y,cam_x+cam_ancho,(cam_y+cam_alto)+100,c_black,c_black,c_black,c_black,false)
		draw_set_alpha(1)
	
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(fnt_muy_grande)
		var posX = cam_x+640
		var posY = cam_y+360
		
		switch(os_get_language()) {
			case "es": draw_text_outline("¡NADIE FUE ELEGIDO COMO ASESINO!",posX,posY,c_black,1,1,c_white) break;
			case "pt": draw_text_outline("NINGUÉM FOI ESCOLHIDO COMO ASSASSINO!",posX,posY,c_black,1,1,c_white) break;
			case "it": draw_text_outline("NESSUNO È STATO SCELTO COME ASSASSINO!",posX,posY,c_black,1,1,c_white) break;
			case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("НИКТО НЕ ВЫБРАН!",posX,posY,c_black,1,1,c_white) break;
			default: draw_text_outline("NOBODY WAS CHOSEN AS A KILLER!",posX,posY,c_black,1,1,c_white) break;
		}
	}
#endregion


#region Dibuja la interfaz cuando eligen a alguien en la votacion
	else if (global.estadoJuego == "votacion_finalizada_un_jugador_elegido")
	{
		draw_set_alpha(1)
		draw_rectangle_color(cam_x,cam_y,cam_x+cam_ancho,(cam_y+cam_alto)+100,c_black,c_black,c_black,c_black,false)
		draw_set_alpha(1)
	
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(fnt_muy_grande)
		var posX = cam_x+640
		var posY = cam_y+160
		var posY2 = cam_y+560
		var escala = 1.5
		
		#region Dibuja el titulo
		if (nombre_jugador_elegido!=noone){
			switch(os_get_language()) {
				case "es": draw_text_outline("¡"+string(nombre_jugador_elegido)+" FUE ELEGIDO COMO ASESINO!",posX,posY,c_black,1,1,c_white) break;
				case "pt": draw_text_outline(""+string(nombre_jugador_elegido)+" FOI ESCOLHIDO UM ASSASSINO!",posX,posY,c_black,1,1,c_white) break;
				case "it": draw_text_outline(""+string(nombre_jugador_elegido)+" È STATO SCELTO COME ASSASSINO!",posX,posY,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_grande_ru) draw_text_outline(""+string(nombre_jugador_elegido)+" БЫЛ ИЗБРАН УБИЙЦЕЙ",posX,posY,c_black,1,1,c_white) break;
				default: draw_text_outline(""+string(nombre_jugador_elegido)+" HAS BEEN CHOSEN A KILLER!",posX,posY,c_black,1,1,c_white) break;
			}
		}
		else {
			switch(os_get_language()) {
				case "es": draw_text_outline("¡ALGUIEN FUE ELEGIDO COMO ASESINO!",posX,posY,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("ALGUÉM FOI ESCOLHIDO COMO ASSASSINO!",posX,posY,c_black,1,1,c_white) break;
				case "it": draw_text_outline("QUALCUNO È STATO SCELTO COME KILLER!",posX,posY,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("КТО-ТО БЫЛ ВЫБРАН УБИЙЦЕЙ!",posX,posY,c_black,1,1,c_white) break;
				default: draw_text_outline("SOMEONE WAS CHOSEN AS A KILLER!",posX,posY,c_black,1,1,c_white) break;
			}
		}
		#endregion
		
		#region Dibuja al jugador elegido
			scr_contr_dibujo_parado_idPers(id_jugador_elegido,posX,posY+200,escala,1)
		#endregion
		
		#region Dibuja el subtitulo
		draw_set_font(fnt_grande)
		if (tipo_jugador_elegido=="IMPOSTOR"){
			var color = make_color_rgb(255,97,97)
			var borde = make_color_rgb(150,0,0)
			switch(os_get_language()) {
				case "es": draw_text_outline("¡SE HA DESCUBIERTO A UN ASESINO!",posX,posY2,c_black,1,1,color) break;
				case "pt": draw_text_outline("UM ASSASSINO FOI DESCOBERTO!",posX,posY2,c_black,1,1,color) break;
				case "it": draw_text_outline("UN KILLER È STATO SCOPERTO!",posX,posY2,c_black,1,1,color) break;
				case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("УБИЙЦА ОБНАРУЖЕН!",posX,posY2,c_black,1,1,color) break;
				default: draw_text_outline("A KILLER HAS BEEN DISCOVERED!",posX,posY2,c_black,1,1,color) break;
			}
		}
		else if (tipo_jugador_elegido=="COMPLICE"){
			var color = make_color_rgb(255,137,31)
			var borde = make_color_rgb(147,66,0)
			switch(os_get_language()) {
				case "es": draw_text_outline("¡SE HA DESCUBIERTO A UN CÓMPLICE!",posX,posY2,c_black,1,1,color) break;
				case "pt": draw_text_outline("UM COMPLICE FOI DESCOBRIDO!",posX,posY2,c_black,1,1,color) break;
				case "it": draw_text_outline("È STATO SCOPERTO UN COMPLICE!",posX,posY2,c_black,1,1,color) break;
				case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ОБНАРУЖЕН СОПРОВОДИТЕЛЬ!",posX,posY2,c_black,1,1,color) break;
				default: draw_text_outline("AN ACCOMPLICE HAS BEEN DISCOVERED!",posX,posY2,c_black,1,1,color) break;
			}
		}
		else if (tipo_jugador_elegido=="TRIPULANTE"){
			var color = make_color_rgb(90,220,255)
			var borde = make_color_rgb(0,66,89)
			switch(os_get_language()) {
				case "es": draw_text_outline("¡NO ERA UN ASESINO! ERA UN TRIPULANTE!",posX,posY2,c_black,1,1,color) break;
				case "pt": draw_text_outline("NÃO ERA UM ASSASSINO! ERA UMA TRIPULAÇÃO!",posX,posY2,c_black,1,1,color) break;
				case "it": draw_text_outline("NON ERA UN KILLER! ERA UN EQUIPAGGIO!",posX,posY2,c_black,1,1,color) break;
				case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ОН НЕ БЫЛ УБИЙЦЕЙ! ",posX,posY2,c_black,1,1,color) break;
				default: draw_text_outline("HE WAS NOT A KILLER! IT WAS A CREW!",posX,posY2,c_black,1,1,color) break;
			}
		}
		else if (tipo_jugador_elegido=="DETECTIVE"){
			var color = make_color_rgb(119,255,95)
			var borde = make_color_rgb(0,135,0)
			switch(os_get_language()) {
				case "es": draw_text_outline("¡NO ERA UN ASESINO! ERA UN DETECTIVE!",posX,posY2,c_black,1,1,color) break;
				case "pt": draw_text_outline("NÃO ERA UM ASSASSINO! ERA UM DETETIVE!",posX,posY2,c_black,1,1,color) break;
				case "it": draw_text_outline("NON ERA UN KILLER! HE WAS A DETECTIVE! ",posX,posY2,c_black,1,1,color) break;
				case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("ОН НЕ БЫЛ УБИЙЦЕЙ! ",posX,posY2,c_black,1,1,color) break;
				default: draw_text_outline("HE WAS NOT A KILLER! HE WAS A DETECTIVE!",posX,posY2,c_black,1,1,color) break;
			}
		}
		#endregion
	}
#endregion

*/

}