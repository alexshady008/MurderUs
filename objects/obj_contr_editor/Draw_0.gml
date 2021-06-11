/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

#region Propiedades de la camara
	cam_x = camera_get_view_x(view_camera[0]) 
	cam_y = camera_get_view_y(view_camera[0]) 
	cam_ancho = camera_get_view_width(view_camera[0])
	cam_alto = camera_get_view_height(view_camera[0])
#endregion



#region Dibuja el rectangulo de abajo y de arriba
	if (global.visible_opciones == true) {
		draw_set_alpha(0.75)
		draw_rectangle_colour(cam_x,cam_y,(cam_x+cam_ancho),cam_y+(288/global.zoom),c_black,c_black,c_black,c_black,false)  //96
		draw_rectangle_colour(cam_x,(cam_y+cam_alto)-(750/global.zoom),(cam_x+cam_ancho),(cam_y+cam_alto),c_black,c_black,c_black,c_black,false)  //250
		draw_set_alpha(1)
		
		
		#region Dibuja los titulos de los objetos
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)
			draw_set_font(fnt_normal)
			var posY = ((cam_y+cam_alto)-(125/global.zoom))  //-600
			var posX = (cam_x+(1920/global.zoom))
			var sep = 30
			var width = 3000/global.zoom
			var escala = 3/global.zoom
			var angulo = 0
		
		switch(global.categoria_obj) {
			#region TAREAS
				case 1:   
					switch(os_get_language()) {
						case "es": draw_text_outline4("TAREAS",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "pt": draw_text_outline4("TAREFAS",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "it": draw_text_outline4("COMPITI",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "ru": draw_set_font(fnt_normal_ru) draw_text_outline4("ЗАДАЧИ",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						default: draw_text_outline4("TASKS",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
					}
				break;
			#endregion
			#region PUERTAS
				case 2:   
					switch(os_get_language()) {
						case "es": draw_text_outline4("PUERTAS",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "pt": draw_text_outline4("PORTAS",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "it": draw_text_outline4("PORTE",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "ru": draw_set_font(fnt_normal_ru) draw_text_outline4("ДВЕРИ",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						default: draw_text_outline4("DOORS",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
					}
				break;
			#endregion
			#region HOGAR
				case 3:   
					switch(os_get_language()) {
						case "es": draw_text_outline4("HOGAR",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "pt": draw_text_outline4("CASA",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "it": draw_text_outline4("CASA",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "ru": draw_set_font(fnt_normal_ru) draw_text_outline4("ДОМА",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						default: draw_text_outline4("HOME",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
					}
				break;
			#endregion
			#region DORMITORIO
				case 4:   
					switch(os_get_language()) {
						case "es": draw_text_outline4("DORMITORIO",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "pt": draw_text_outline4("QUARTO",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "it": draw_text_outline4("CAMERA",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "ru": draw_set_font(fnt_normal_ru) draw_text_outline4("СПАЛЬНЯ",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						default: draw_text_outline4("BEDROOM",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
					}
				break;
			#endregion
			#region CIENCIA
				case 5:   
					switch(os_get_language()) {
						case "es": draw_text_outline4("CIENCIA",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "pt": draw_text_outline4("CIÊNCIA",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "it": draw_text_outline4("SCIENZA",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "ru": draw_set_font(fnt_normal_ru) draw_text_outline4("НАУКА",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						default: draw_text_outline4("SCIENCE",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
					}
				break;
			#endregion
			#region MAQUINARIA
				case 6:   
					switch(os_get_language()) {
						case "es": draw_text_outline4("MAQUINARIA",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "pt": draw_text_outline4("MACHINERY",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "it": draw_text_outline4("MACCHINARI",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "ru": draw_set_font(fnt_normal_ru) draw_text_outline4("ОБОРУДОВАНИЕ",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						default: draw_text_outline4("MACHINERY",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
					}
				break;
			#endregion
			#region DEPOSITO
				case 7:   
					switch(os_get_language()) {
						case "es": draw_text_outline4("DEPOSITO",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "pt": draw_text_outline4("DEPÓSITO",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "it": draw_text_outline4("DEPOSITARE",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "ru": draw_set_font(fnt_normal_ru) draw_text_outline4("ДЕПОЗИТ",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						default: draw_text_outline4("DEPOSIT",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
					}
				break;
			#endregion
			#region CONTROL
				case 8:   
					switch(os_get_language()) {
						case "es": draw_text_outline4("CONTROL",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "pt": draw_text_outline4("CONTROLE",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "it": draw_text_outline4("CONTROLLO",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "ru": draw_set_font(fnt_normal_ru) draw_text_outline4("КОНТРОЛЬ",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						default: draw_text_outline4("CONTROL",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
					}
				break;
			#endregion
			#region ENERGIA
				case 9:   
					switch(os_get_language()) {
						case "es": draw_text_outline4("ENERGÍA",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "pt": draw_text_outline4("ENERGÍA",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "it": draw_text_outline4("ЭНЕРГИЯ",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "ru": draw_set_font(fnt_normal_ru) draw_text_outline4("ЭНЕРГИЯ",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						default: draw_text_outline4("ENERGY",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
					}
				break;
			#endregion
			#region JARDIN
				case 10:   
					switch(os_get_language()) {
						case "es": draw_text_outline4("JARDÍN",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "pt": draw_text_outline4("JARDIM",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "it": draw_text_outline4("GIARDINO",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "ru": draw_set_font(fnt_normal_ru) draw_text_outline4("САД",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						default: draw_text_outline4("GARDEN",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
					}
				break;
			#endregion
			#region MINERALES
				case 11:   
					switch(os_get_language()) {
						case "es": draw_text_outline4("MINERALES",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "pt": draw_text_outline4("MINERAIS",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "it": draw_text_outline4("MINERALI",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "ru": draw_set_font(fnt_normal_ru) draw_text_outline4("МИНЕРАЛЫ",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						default: draw_text_outline4("MINERALS",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
					}
				break;
			#endregion
			#region OTROS
				case 12:   
					switch(os_get_language()) {
						case "es": draw_text_outline4("OTROS",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "pt": draw_text_outline4("OUTROS",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "it": draw_text_outline4("ALTRI",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "ru": draw_set_font(fnt_normal_ru) draw_text_outline4("ДРУГИЕ",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						default: draw_text_outline4("OTHERS",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
					}
				break;
			#endregion
			#region INTERACTIVOS
				case 13:   
					switch(os_get_language()) {
						case "es": draw_text_outline4("INTERACTIVOS",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "pt": draw_text_outline4("INTERATIVO",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "it": draw_text_outline4("INTERATTIVO",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						case "ru": draw_set_font(fnt_normal_ru) draw_text_outline4("ИНТЕРАКТИВНЫЙ",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
						default: draw_text_outline4("INTERACTIVE",posX,posY,c_black,1,1,c_white,sep,width,escala,angulo) break;
					}
				break;
			#endregion
		}
		#endregion
	}
#endregion


#region Dibuja el aviso de que deben crearse las tareas
	if (aviso_crear_tareas){
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(fnt_grande)
		var posY = ((cam_y+(480/global.zoom)))
		var posX = (cam_x+(1920/global.zoom))
		var sep = 30
		var width = 3600/global.zoom
		var escala = 3/global.zoom
		var angulo = 0
		
		switch(os_get_language()) {
			case "es": draw_text_outline4("¡Debes crear todas las tareas y algunas alcantarillas!",posX,posY,c_black,1,1,c_red,sep,width,escala,angulo) break;
			case "pt": draw_text_outline4("Você deve criar todas as tarefas e alguns esgotos!",posX,posY,c_black,1,1,c_red,sep,width,escala,angulo) break;
			case "it": draw_text_outline4("Devi creare tutti i compiti e alcune fogne!",posX,posY,c_black,1,1,c_red,sep,width,escala,angulo) break;
			case "ru": draw_set_font(fnt_grande_ru) draw_text_outline4("Вам нужно создать все задания и несколько коллекторов!",posX,posY,c_black,1,1,c_red,sep,width,escala,angulo) break;
			default: draw_text_outline4("You must create all the tasks and some sewers!",posX,posY,c_black,1,1,c_red,sep,width,escala,angulo) break;
		}
	}
#endregion


#region Dibuja el aviso de que el nivel fue guardado
	if (aviso_nivel_guardado){
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(fnt_grande)
		var posY = ((cam_y+(480/global.zoom)))
		var posX = (cam_x+(1920/global.zoom))
		var sep = 30
		var width = 3600/global.zoom
		var escala = 3/global.zoom
		var angulo = 0
		
		switch(os_get_language()) {
			case "es": draw_text_outline4("¡El mapa se ha guardado con éxito!",posX,posY,c_black,1,1,c_lime,sep,width,escala,angulo) break;
			case "pt": draw_text_outline4("O mapa foi salvo com sucesso!",posX,posY,c_black,1,1,c_lime,sep,width,escala,angulo) break;
			case "it": draw_text_outline4("La mappa è stata salvata con successo!",posX,posY,c_black,1,1,c_lime,sep,width,escala,angulo) break;
			case "ru": draw_set_font(fnt_grande_ru) draw_text_outline4("Карта успешно сохранена!",posX,posY,c_black,1,1,c_lime,sep,width,escala,angulo) break;
			default: draw_text_outline4("The map has been saved successfully!",posX,posY,c_black,1,1,c_lime,sep,width,escala,angulo) break;
		}
	}
#endregion


#region Dibuja el aviso de que el nivel fue guardado
	if (aviso_nivel_no_guardado){
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(fnt_grande)
		var posY = ((cam_y+(480/global.zoom)))
		var posX = (cam_x+(1920/global.zoom))
		var sep = 30
		var width = 3600/global.zoom
		var escala = 3/global.zoom
		var angulo = 0
		
		switch(os_get_language()) {
			case "es": draw_text_outline4("¡No hay ningún mapa guardado!",posX,posY,c_black,1,1,c_red,sep,width,escala,angulo) break;
			case "pt": draw_text_outline4("Não há mapa salvo!",posX,posY,c_black,1,1,c_red,sep,width,escala,angulo) break;
			case "it": draw_text_outline4("Nessuna mappa salvata!",posX,posY,c_black,1,1,c_red,sep,width,escala,angulo) break;
			case "ru": draw_set_font(fnt_grande_ru) draw_text_outline4("Нет сохраненной карты!",posX,posY,c_black,1,1,c_red,sep,width,escala,angulo) break;
			default: draw_text_outline4("There is no saved map!",posX,posY,c_black,1,1,c_red,sep,width,escala,angulo) break;
		}
	}
#endregion


#region Dibuja el aviso de que el objeto no puede crearse en ese lugar
	if (aviso_objeto_no_creado){
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(fnt_grande)
		var posY = ((cam_y+(480/global.zoom)))
		var posX = (cam_x+(1920/global.zoom))
		var sep = 30
		var width = 3600/global.zoom
		var escala = 3/global.zoom
		var angulo = 0
		
		switch(os_get_language()) {
			case "es": draw_text_outline4("¡No se puede crear este objeto aquí!",posX,posY,c_black,1,1,c_red,sep,width,escala,angulo) break;
			case "pt": draw_text_outline4("Este objeto não pode ser criado aqui!",posX,posY,c_black,1,1,c_red,sep,width,escala,angulo) break;
			case "it": draw_text_outline4("Questo oggetto non può essere creato qui!",posX,posY,c_black,1,1,c_red,sep,width,escala,angulo) break;
			case "ru": draw_set_font(fnt_grande_ru) draw_text_outline4("Этот объект нельзя создать здесь!",posX,posY,c_black,1,1,c_red,sep,width,escala,angulo) break;
			default: draw_text_outline4("This object cannot be created here!",posX,posY,c_black,1,1,c_red,sep,width,escala,angulo) break;
		}
	}
#endregion


#region Dibuja el aviso de que el objeto de paredno puede crearse en ese lugar
	if (aviso_objeto_de_pared_no_creado){
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(fnt_grande)
		var posY = ((cam_y+(480/global.zoom)))
		var posX = (cam_x+(1920/global.zoom))
		var sep = 30
		var width = 3600/global.zoom
		var escala = 3/global.zoom
		var angulo = 0
		
		switch(os_get_language()) {
			case "es": draw_text_outline4("¡Debes crear este objeto en una pared!",posX,posY,c_black,1,1,c_red,sep,width,escala,angulo) break;
			case "pt": draw_text_outline4("Você deve criar este objeto em uma parede!",posX,posY,c_black,1,1,c_red,sep,width,escala,angulo) break;
			case "it": draw_text_outline4("Devi creare questo oggetto su un muro!",posX,posY,c_black,1,1,c_red,sep,width,escala,angulo) break;
			case "ru": draw_set_font(fnt_grande_ru) draw_text_outline4("Вы должны создать этот объект на стене!",posX,posY,c_black,1,1,c_red,sep,width,escala,angulo) break;
			default: draw_text_outline4("You must create this object on a wall!",posX,posY,c_black,1,1,c_red,sep,width,escala,angulo) break;
		}
	}
#endregion


#region Dibuja el aviso de que el objeto no puede crearse por que se alcanzo la cantidad maxima
	if (aviso_objeto_cant_maxima==true and aviso_objeto_no_creado==false and aviso_objeto_de_pared_no_creado==false){
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(fnt_grande)
		var posY = ((cam_y+(480/global.zoom)))
		var posX = (cam_x+(1920/global.zoom))
		var sep = 30
		var width = 3600/global.zoom
		var escala = 3/global.zoom
		var angulo = 0
		
		switch(os_get_language()) {
			case "es": draw_text_outline4("¡Se alcanzó la cantidad máxima para crear este objeto!",posX,posY,c_black,1,1,c_orange,sep,width,escala,angulo) break;
			case "pt": draw_text_outline4("A quantidade máxima para criar este item foi atingida!",posX,posY,c_black,1,1,c_orange,sep,width,escala,angulo) break;
			case "it": draw_text_outline4("È stato raggiunto l'importo massimo per creare questo oggetto!",posX,posY,c_black,1,1,c_orange,sep,width,escala,angulo) break;
			case "ru": draw_set_font(fnt_grande_ru) draw_text_outline4("Достигнута максимальная сумма для создания этого предмета!",posX,posY,c_black,1,1,c_orange,sep,width,escala,angulo) break;
			default: draw_text_outline4("The maximum amount to create this item has been reached!",posX,posY,c_black,1,1,c_orange,sep,width,escala,angulo) break;
		}
	}
#endregion


#region COntr el tutorial
	if (global.tutorial_editor!=ultimo_paso_tutorial and global.visible_opciones==true){
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(fnt_grande)
		var posY = ((cam_y+(480/global.zoom)))
		var posX = (cam_x+(1920/global.zoom))
		var sep = 30
		var width = 3600/global.zoom
		var escala = 3/global.zoom
		var angulo = 0
		var color_letras = make_color_rgb(136,255,136)
		
		switch(global.tutorial_editor){
			#region Muestra el paso 1 del tutorial
			case 0:
				var posY = ((cam_y+(1300/global.zoom)))
				var posX = (cam_x+(1920/global.zoom))
				switch(os_get_language()) {
					case "es": draw_text_outline4("¡Crea todas las tareas!",posX,posY,c_black,1,1,color_letras,sep,width,escala,angulo) break;
					case "pt": draw_text_outline4("Crie todas as tarefas!",posX,posY,c_black,1,1,color_letras,sep,width,escala,angulo) break;
					case "it": draw_text_outline4("Crea tutte le attività!",posX,posY,c_black,1,1,color_letras,sep,width,escala,angulo) break;
					case "ru": draw_set_font(fnt_grande_ru) draw_text_outline4("Создавайте все задания!",posX,posY,c_black,1,1,color_letras,sep,width,escala,angulo) break;
					default: draw_text_outline4("Create all the tasks!",posX,posY,c_black,1,1,color_letras,sep,width,escala,angulo) break;
				}
				//draw_sprite_ext(spr_indicador_tutorial_editor,0,posX,posY+(75/global.zoom),escala,-escala,0,c_white,1)
			break
			#endregion
			
			#region Muestra el paso 2 del tutorial
			case 1:
				draw_set_halign(fa_left)
				var posY = ((cam_y+(450/global.zoom)))
				var posX = (cam_x+(550/global.zoom))
				switch(os_get_language()) {
					case "es": draw_text_outline4("¡Guarda el mapa!",posX,posY,c_black,1,1,color_letras,sep,width,escala,angulo) break;
					case "pt": draw_text_outline4("Salve o mapa!",posX,posY,c_black,1,1,color_letras,sep,width,escala,angulo) break;
					case "it": draw_text_outline4("Salva la mappa!",posX,posY,c_black,1,1,color_letras,sep,width,escala,angulo) break;
					case "ru": draw_set_font(fnt_grande_ru) draw_text_outline4("Сохраните карту!",posX,posY,c_black,1,1,color_letras,sep,width,escala,angulo) break;
					default: draw_text_outline4("Save the map!",posX,posY,c_black,1,1,color_letras,sep,width,escala,angulo) break;
				}
				draw_sprite_ext(spr_indicador_tutorial_editor,0,posX+(50/global.zoom),posY-(130/global.zoom),escala,escala,0,c_white,1)
			break
			#endregion
			
			#region Muestra el paso 3 del tutorial
			case 2:
				draw_set_halign(fa_left)
				var posY = ((cam_y+(450/global.zoom)))
				var posX = (cam_x+(200/global.zoom))
				switch(os_get_language()) {
					case "es": draw_text_outline4("¡Elige el mapa!",posX,posY,c_black,1,1,color_letras,sep,width,escala,angulo) break;
					case "pt": draw_text_outline4("Escolha o mapa!",posX,posY,c_black,1,1,color_letras,sep,width,escala,angulo) break;
					case "it": draw_text_outline4("Scegli la mappa!",posX,posY,c_black,1,1,color_letras,sep,width,escala,angulo) break;
					case "ru": draw_set_font(fnt_grande_ru) draw_text_outline4("Выберите его, чтобы играть!",posX,posY,c_black,1,1,color_letras,sep,width,escala,angulo) break;
					default: draw_text_outline4("Choose the map!",posX,posY,c_black,1,1,color_letras,sep,width,escala,angulo) break;
				}
				draw_sprite_ext(spr_indicador_tutorial_editor,0,posX+(50/global.zoom),posY-(130/global.zoom),escala,escala,0,c_white,1)
			break
			#endregion
		}
	}
#endregion
