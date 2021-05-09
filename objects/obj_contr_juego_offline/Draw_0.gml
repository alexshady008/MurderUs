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
		if (global.jugador_tipo == "IMPOSTOR") var posY = cam_y+310
		else if (global.jugador_tipo == "TRIPULANTE") var posY = cam_y+190
		
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
			case "es": draw_text_outline("ZOMBIE",posX,posY,borde,1,1,color) break;
			case "pt": draw_text_outline("ZOMBIE",posX,posY,borde,1,1,color) break;
			case "it": draw_text_outline("ZOMBI",posX,posY,borde,1,1,color) break;
			default: draw_text_outline("ZOMBIE",posX,posY,borde,1,1,color) break;
		}
		#endregion
		
		#region DIbuja a los personajes de la raza 2
			scr_dibuja_personajes_raza2_offline(posY)
		#endregion
		
		#region Dibuja el objetivo
			var posX = cam_x+640
			var posY_objetivo = posY+75
			draw_set_font(fnt_normal)
			switch(os_get_language()) {
				case "es": draw_text_outline("ELIMINA A TODOS LOS TRIPULANTES",posX,posY_objetivo,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("MATE TODAS AS EQUIPES",posX,posY_objetivo,c_black,1,1,c_white) break;
				case "it": draw_text_outline("UCCIDI TUTTI GLI EQUIPAGGI",posX,posY_objetivo,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_chica_ru) draw_text_outline("УБИТЬ ВСЕ ЭКИПАЖИ",posX,posY_objetivo,c_black,1,1,c_white) break;
				default: draw_text_outline("KILL ALL CREWS",posX,posY_objetivo,c_black,1,1,c_white) break;
			}
		#endregion
		
		#region Dibuja el objetivo 2
			var posX = cam_x+640
			var posY_objetivo = (cam_y+cam_alto)-50
			draw_set_font(fnt_normal)
			switch(os_get_language()) {
				case "es": draw_text_outline("NO PERMITAS QUE ARREGLEN LAS TAREAS",posX,posY_objetivo,borde,1,1,color) break;
				case "pt": draw_text_outline("NÃO DEIXE ELES CORRIGIR AS TAREFAS",posX,posY_objetivo,borde,1,1,color) break;
				case "it": draw_text_outline("NON LASCIARE CHE FISSANO I COMPITI",posX,posY_objetivo,borde,1,1,color) break;
				case "ru": draw_set_font(fnt_chica_ru) draw_text_outline("ИСПОЛЬЗУЙТЕ КАНАЛИЗАЦИЮ",posX,posY_objetivo,borde,1,1,color) break;
				default: draw_text_outline("DON'T LET THEM FIX TASKS",posX,posY_objetivo,borde,1,1,color) break;
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
			scr_dibuja_personajes_tripulantes_offline(posY)
		#endregion
		
		#region Dibuja el objetivo
			var posX = cam_x+640
			var posY_objetivo = posY+75
			draw_set_font(fnt_normal)
			switch(os_get_language()) {
				case "es": draw_text_outline("COMPLETA TODAS LAS TAREAS",posX,posY_objetivo,c_black,1,1,c_white) break;
				case "pt": draw_text_outline("COMPLETAR TODAS AS TAREFAS",posX,posY_objetivo,c_black,1,1,c_white) break;
				case "it": draw_text_outline("COMPLETA TUTTI I COMPITI",posX,posY_objetivo,c_black,1,1,c_white) break;
				case "ru": draw_set_font(fnt_chica_ru) draw_text_outline("ВЫПОЛНИТЬ ВСЕ ЗАДАЧИ",posX,posY_objetivo,c_black,1,1,c_white) break;
				default: draw_text_outline("COMPLETE ALL TASKS",posX,posY_objetivo,c_black,1,1,c_white) break;
			}
		#endregion
		
		#region Dibuja el objetivo 2
			var posX = cam_x+640
			var posY_objetivo = (cam_y+cam_alto)-50
			draw_set_font(fnt_normal)
			switch(os_get_language()) {
				case "es": draw_text_outline("EVITA SER ELIMINADO",posX,posY_objetivo,borde,1,1,color) break;
				case "pt": draw_text_outline("EVITE SER MORTO",posX,posY_objetivo,borde,1,1,color) break;
				case "it": draw_text_outline("EVITARE DI ESSERE UCCISO",posX,posY_objetivo,borde,1,1,color) break;
				case "ru": draw_set_font(fnt_chica_ru) draw_text_outline("ИЗБЕЖАТЬ УБИЙСТВА",posX,posY_objetivo,borde,1,1,color) break;
				default: draw_text_outline("AVOID BEING KILLED",posX,posY_objetivo,borde,1,1,color) break;
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
			#endregion
		
			#region Dibuja la cantidad de tripulantes asesinados
			/*if (global.jugador_tipo=="IMPOSTOR")
			{
				draw_set_halign(fa_left)
				draw_set_valign(fa_middle)
				//draw_set_font(fnt_grande)
				draw_set_font(fnt_normal)
				var posX = cam_x+20
				var posY = cam_y+50
					
				switch(os_get_language()) {
					case "es": draw_text_outline("ASESINADOS: "+string(cant_tripulantes_actual)+" / "+string(global.cant_tripulantes_sala),posX,posY,c_black,1,1,c_white) break;
					case "pt": draw_text_outline("REMOVIDO: "+string(cant_tripulantes_actual)+" / "+string(global.cant_tripulantes_sala),posX,posY,c_black,1,1,c_white) break;
					case "it": draw_text_outline("UCCISO: "+string(cant_tripulantes_actual)+" / "+string(global.cant_tripulantes_sala),posX,posY,c_black,1,1,c_white) break;
					//case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ЗАДАЧИ ВЫПОЛНЕНЫ: "+string(global.cant_tareas_completadas)+" / "+string(global.max_tareas),posX,posY,c_black,1,1,c_white) break;
					default: draw_text_outline("KILLED: "+string(cant_tripulantes_actual)+" / "+string(global.cant_tripulantes_sala),posX,posY,c_black,1,1,c_white) break;
				}
			}	
			*/
			#endregion
			
			#region Dibuja la cant de tripulantes
				//var cantJugadores = global.cant_tripulantes_sala
				var cant_tripulantes_actual = instance_number(obj_personaje_bot)
				var cantJugadores = cant_tripulantes_actual
			
				draw_set_halign(fa_left)
				draw_set_valign(fa_middle)
				//draw_set_font(fnt_grande)
				draw_set_font(fnt_normal)
				var posX = cam_x+20
				var posY = cam_y+100
		
				switch(os_get_language()) {
					case "es": draw_text_outline("TRIPULANTES: "+string(cantJugadores)+" / "+string(global.cant_tripulantes_sala),posX,posY,c_black,1,1,c_white) break;
					case "pt": draw_text_outline("CREWS: "+string(cantJugadores)+" / "+string(global.cant_tripulantes_sala),posX,posY,c_black,1,1,c_white) break;
					case "it": draw_text_outline("EQUIPAGGI: "+string(cantJugadores)+" / "+string(global.cant_tripulantes_sala),posX,posY,c_black,1,1,c_white) break;
					case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ЭКИПАЖИ: "+string(cantJugadores)+" / "+string(global.cant_tripulantes_sala),posX,posY,c_black,1,1,c_white) break;
					default: draw_text_outline("CREWS: "+string(cantJugadores)+" / "+string(global.cant_tripulantes_sala),posX,posY,c_black,1,1,c_white) break;
				}
			#endregion
		
			#region Dibuja la cant de tripulantes
				var cantRaza2 = global.cant_raza2_sala
			
				draw_set_halign(fa_left)
				draw_set_valign(fa_middle)
				//draw_set_font(fnt_grande)
				draw_set_font(fnt_normal)
				var posX = cam_x+20
				var posY = cam_y+150
		
				switch(os_get_language()) {
					case "es": draw_text_outline("ZOMBIES: "+string(cantRaza2),posX,posY,c_black,1,1,c_white) break;
					case "pt": draw_text_outline("ZOMBIES: "+string(cantRaza2),posX,posY,c_black,1,1,c_white) break;
					case "it": draw_text_outline("ZOMBI: "+string(cantRaza2),posX,posY,c_black,1,1,c_white) break;
					case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ЗОМБИ: "+string(cantJugadores),posX,posY,c_black,1,1,c_white) break;
					default: draw_text_outline("ZOMBIES: "+string(cantRaza2),posX,posY,c_black,1,1,c_white) break;
				}
			#endregion		
		}
		
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
		if (global.jugador_tipo == "IMPOSTOR"){
			
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
					case "es": draw_text_outline("¡EL EXTERMINIO YA COMENZÓ!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					case "pt": draw_text_outline("COMEÇOU A EXTERMINAÇÃO!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					case "it": draw_text_outline("LO STERMINAMENTO È INIZIATO!!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("УНИЧТОЖЕНИЕ НАЧИЛОСЬ!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					default: draw_text_outline("THE EXTERMINATION HAS BEGUN!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
				}
			#endregion
			
		}
		else if (global.jugador_tipo == "TRIPULANTE") {
			
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
					case "es": draw_text_outline("¡LOS ANIQUILAREMOS A TODOS!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					case "pt": draw_text_outline("NÓS DESTRUIREMOS TODOS ELES!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					case "it": draw_text_outline("LI DISTRUGGEREMO TUTTI!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("МЫ УНИЧТОЖАЕМ ИХ ВСЕХ!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					default: draw_text_outline("WE WILL DESTROY THEM ALL!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
				}
			#endregion
		}
		
		
		#endregion
	
		#region  Dibuja a los jugadores
			scr_dibuja_personajes_raza2_offline(posY)
		#endregion
	
		#region Dibuja el motivo
			if (mensaje_juego_finalizado!=false)
			{
				var posX = cam_x+640
				//var posY = cam_y+650
				var posY = posY2
				draw_set_font(fnt_normal)
				switch(mensaje_juego_finalizado){
					case "tripulantes_eliminados":
						switch(os_get_language()) {
							case "es": draw_text_outline("¡LOS TRIPULANTES FUERON ELIMINADOS!",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "pt": draw_text_outline("AS EQUIPES FORAM ELIMINADAS!",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "it": draw_text_outline("GLI EQUIPAGGI SONO STATI ELIMINATI!",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "ru": draw_set_font(fnt_chica_ru) draw_text_outline("ЭКИПАЖИ УБИРАЛИ!",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							default: draw_text_outline("THE CREWS WERE ELIMINATED!",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
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
		if (global.jugador_tipo == "IMPOSTOR"){
			
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
					case "es": draw_text_outline("NUESTRA RAZA NO SERÁ EXTERMINADA!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					case "pt": draw_text_outline("NOSSAS ESPÉCIES NÃO SERÃO EXTERMINADAS!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					case "it": draw_text_outline("LA NOSTRA SPECIE NON VERRÀ STERMINATA!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("НАШИ ВИДЫ НЕ БУДУТ УНИЧТОЖЕНЫ!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
					default: draw_text_outline("OUR SPECIES WILL NOT BE EXTERMINED!",posX,posY_IA,borde,alfaLetras,alfaLetras,color) break;
				}
			#endregion
			
		}
		else if (global.jugador_tipo == "TRIPULANTE"){
			
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
			scr_dibuja_personajes_tripulantes_offline(posY)
		#endregion
	
		#region Dibuja el motivo
			if (mensaje_juego_finalizado!=false)
			{
				var posX = cam_x+640
				var posY = posY2
				//var posY = cam_y+650
				draw_set_font(fnt_normal)
				switch(mensaje_juego_finalizado){
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
					case "raza2_sin_oxigeno":
						//draw_set_font(fnt_chica)
						switch(os_get_language()) {
							case "es": draw_text_outline("LOS ZOMBIES SE QUEDARON SIN OXIGENO",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "pt": draw_text_outline("OS ZOMBIS ESTÃO SEM OXIGÊNIO",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "it": draw_text_outline("GLI ZOMBI ESAURISCONO L'OSSIGENO",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							case "ru": draw_set_font(fnt_chica_ru) draw_text_outline("ЗОМБИ ВЫБЕГАЮТ КИСЛОРОДА",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
							default: draw_text_outline("THE ZOMBIES RUN OUT OF OXYGEN",posX,posY,c_black,alfaLetras,alfaLetras,c_white) break;
						}
					break
				}
			}
		#endregion
			
		draw_set_alpha(1)
	}
}
#endregion


}