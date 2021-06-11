/// @description Propiedades del juego
// Puede escribir su código en este editor
//global.nombre_async = noone  //BORRAR DESPUES


#region Variables

	#region Variables globales de Objetos de Rooms
		global.depth_techo = -5500  //Profundidad de los objetos de techos
		global.depth_objetos_encima = -5300  //Profundidad de objetos en el aire
		global.depth_nombre_habitacion = -10000  //Profundidad de los nombres de las habitaciones
		global.depth_piso = 10  //Profundidad del piso
		global.pos_sombra_objetos1 = 10  //pixeles mas abajos de las sombras de objetos de salas
		global.pos_sombra_objetos2 = 5 //pixeles mas abajos de las sombras de objetos de salas
	#endregion
	
	#region Variables controladores
		global.jugabilidad = true  //Controla si el juego esta bloqueado o no
		global.modo_jugabilidad = false
		global.menuBloq = false  //Controla si el menu esta bloqueado o no
		global.popup = false  //Controla si hay un popup que se muestra
		global.escribiendo = false //Controla si se esta escribiendo o no
		global.slider_presionado=false //Controla si se esta deslizando el dedo
		global.historia = false //controla si se esta mostrando la historia
		global.veces_jugado_offline = 0
		global.enviar_datos_ranking = false
	#endregion
	
	#region Vestimentas (skins, prendas, sombreros, accesorios), mascotas y monedas/diamantes
		global.max_skins = 36  //Cantidad totales de skins
		global.max_prendas = 33 //Cantidad maxima de prendas
		global.max_accesorios = 48  //Cantidad maxima de accesorios
		global.max_sombreros = 39  //Cantidad maxima de sombreros
		global.max_mascotas = 38  //Cantidad maxima de mascotas
		global.precio_skins = 25 //Cantidad de diamantes de cada skin  
		global.precio_prendas = 15 //Cantidad de diamantes de cada prenda  
		global.precio_accesorios = 10 //Cantidad de diamantes de cada accesorio  
		global.precio_sombreros = 10 //Cantidad de diamantes de cada sombrero  
		global.precio_mascotas = 15  //Cantidad de diamantes de cada mascota  
		global.contr_monedas_ganadas = 0 //Cantidad de monedas ganadas
	#endregion
	
	#region Configuraciones
		global.anchoPantalla = 1280  // Pixeles en ancho de la pantalla
		global.altoPantalla = 720  // Pixeles en alto de la pantalla
		global.area_sonido = 500  //distancia en pixeles desde la posicion del obj_sonido en que se escuchara el sonido
		global.max_niveles_guardar = 10 // Cantidad maxima de guardar niveles personalizados
	#endregion
	
	#region Otros
		global.vecesJugarMenu = 0  // Veces que se ingresa al menu 
		global.maxSkins = 10  //Cant maxima de skins que hay  ///
		global.max_tareas = 5  //Maximas tareas creadas
		global.camara = noone //Id de la camara
		global.nombre_habitaciones = noone // String del nombre de la habitacion
		global.tipoDesconexion = noone //Tipo de desconexion a mostrar en un popup
		global.colorElegido = 1 //Color elegido para el personaje de los jugadores
	#endregion
	
#endregion


#region Inicia Variables de redes para el Multijugador

	#region Ip de Servidores, Puerto y Socket UDP
		global.servidorUSATest = "3.15.172.28"; // Ip del servidor de prueba de USA
		global.servidorUSA = "3.16.149.68"; // Ip del servidor de USA
		global.servidorBrasil = "18.228.157.144"; // Ip del servidor de Brasil 
		global.servidor2Brasil = "18.228.157.144"; // Ip del servidor de Brasil 
		global.servidorEuropa = "18.159.135.227"; // Ip del servidor de Europa
		global.servidorLocal = "localhost"; // Ip del servidor de Europa
		global.puerto = 7006 //Puerto del servidor del multijugador //7006
		global.cliente = network_create_socket(network_socket_udp);  //Creacion del socket udp
	
		//global.servidorUSA = "18.189.22.92"; // Ip del servidor de USA
		//global.servidorBrasil = "18.228.151.112"; // Ip del servidor de Brasil
		//global.servidor2Brasil = "15.228.85.61"; // Ip del servidor 2 de Brasil
		//global.ipServidor = global.servidorLocal  //Ip 
		//global.ipServidor = global.servidorLocal  //Ip 
	#endregion
	
	#region Listas de datos
		global.jugadores_lista = noone //Lista de jugadores
		global.jugadores_id = noone //Ids de los jugadores 
		global.servidorDatos = noone //Datos del servidor del multijugador
		global.mensajes_lista = noone //Lista de mensajes de los jugadores
		global.impostores_lista = noone //Lista de ids de asesinos
		global.detective_lista = noone //Lista de ids de detectives
		global.complices_lista = noone //Lista de ids de complices
		global.lista_num_tareas = noone //Lista de tareas
		global.lista_tareas = noone //Lista de tareas creadas
	#endregion
	
	#region Variables principales
		global.ipServidor = global.servidorUSA  //Ip Seleccionada
		global.idLocal = 0   // Id local del jugador
		global.idSala = noone //Id de la sala
		global.servidor_comprobado = false //Controla si el servidor fue comprobado
	#endregion
	
	// controla los servidores
	scr_contr_servidor_cercano()
#endregion


#region  Variables ini 
	ini_open("comandos.ini")
	
		#region Inicia Variables INI
			global.nombre = ini_read_string("jugadorDatos","nombre","MurderUs")  //Nombre del jugador
			global.publicidad = ini_read_real("jugadorDatos","publicidad",true)  //Controla si esta activada la publicidad
			global.skinElegido = ini_read_real("jugadorDatos","skin",1) //Numero del skin elegido
			global.prendaElegida = ini_read_real("jugadorDatos","prenda",0) //Numero de la prenda elegida
			global.accesorioElegido = ini_read_real("jugadorDatos","accesorio",0) //Numero del accesorio elegido
			global.sombreroElegido = ini_read_real("jugadorDatos","sombrero",0) //Numero del sombrero elegido
			global.mascotaElegida = ini_read_real("jugadorDatos","mascota",0) //Numero de la mascota elegida
			global.skinsDesbloqueados = ini_read_real("jugadorDatos","skinsDesbloqueados",5) //Cantidad de skins desbloqueados
			global.regaloSkins = ini_read_real("jugadorDatos","regaloSkins",false) //Controla si los regalos fueron activados
			global.unirse_discord = ini_read_real("jugadorDatos","unirse_discord",false) //Controla si el jugador se unio al Discord
			global.monedas = ini_read_real("jugadorDatos","monedas",0) //Cantidad de Diamantes del jugador
			global.vecesJugado = ini_read_real("jugadorDatos","vecesJugado",0) //Cantidad de veces abierto el juego
			global.musica = ini_read_real("jugadorDatos","sonido",true) //Controla si la musica esta activada
			global.luz = ini_read_real("jugadorDatos","luz",false) //Controla si la luz esta activada
			global.contr_luz_popup = ini_read_real("jugadorDatos","luz_popup",false) //Controla si debe activarse el popup de la luz
			global.mostrar_promocion_fallRun = ini_read_real("jugadorDatos","mostrar_promocion_fallRun",true) //Controla si debe activarse el popup de la promocion del Fall Run
			global.mostrar_promocion_stickFight = ini_read_real("jugadorDatos","mostrar_promocion_stickFight",true) //Controla si debe activarse el popup de la promocion del Stick Fight
			global.mostrar_promocion_stickheroes = ini_read_real("jugadorDatos","mostrar_promocion_stickheroes",true) //Controla si debe activarse el popup de la promocion del StickHeroes
			global.elegir_tipo_vestimenta = ini_read_real("jugadorDatos","tipo_vestimenta_elegir",0) 
			global.skins_comprados = ini_read_real("jugadorDatos","skins_comprados",false) //Controla si se han comprados/desbloqueados todos los skins
			global.prendas_compradas = ini_read_real("jugadorDatos","prendas_compradas",false) //Controla si se han comprados/desbloqueados todos las prendas
			global.accesorios_comprados = ini_read_real("jugadorDatos","accesorios_comprados",false) //Controla si se han comprados/desbloqueados todos los accesorios
			global.sombreros_comprados = ini_read_real("jugadorDatos","sombreros_comprados",false) //Controla si se han comprados/desbloqueados todos los sombreros
			global.mascotas_compradas = ini_read_real("jugadorDatos","mascotas_compradas",false) //Controla si se han comprados/desbloqueados todos las mascotas
			global.super_oferta_comprada = ini_read_real("jugadorDatos","super_oferta_comprada",false) //Controla si se ha comprado la super oferta
			global.contr_jugador_nuevo = ini_read_real("jugadorDatos","contr_jugador_nuevo",false)  //Controla si es un jugador nuevo (abre por primera vez el juego)
			borrarNivelesEditados =ini_read_real("editor","borrarNiveles",0) //Controla si el nivel editado fue borrado
			global.tutorial_editor =ini_read_real("editor","tutorial_editor",0) //Controla si ya se mostro el tutorial del editor
			global.tutorial_historia_juego =ini_read_real("jugadorDatos","tutorial_historia_juego",false) //Controla si ya se mostro el tutorial de la historia
			global.ruleta_usada = ini_read_real("jugadorDatos", "ruleta_usada", false);
		#endregion
		
		#region Variables de Estadisticas 
			scr_variables_estadisticas_ranking()
		#endregion
	
		#region Configura el nombre
			if (global.nombre == "MurderUs") {
				scr_mejorar_nombre_inicial()
				ini_write_string("jugadorDatos","nombre",global.nombre)
			}	
		#endregion
		
		#region Configura la variable de las veces que abre el juego
			if !(global.contr_jugador_nuevo){
				if (global.vecesJugado==1) global.jugador_nuevo = true
				else global.jugador_nuevo = false
				ini_write_real("jugadorDatos","jugador_nuevo",global.jugador_nuevo)
				global.contr_jugador_nuevo=true
				ini_write_real("jugadorDatos","contr_jugador_nuevo",true)
			}	
			else {
				global.jugador_nuevo = ini_read_real("jugadorDatos","jugador_nuevo",false) 
			}
		#endregion
		
		#region Skins 
			for(i=0 ; i<global.max_skins ; i++){
				if (i==0) global.skin_bloqueado[i] = false
				else global.skin_bloqueado[i] = ini_read_real("jugadorDatos","skin_bloqueado"+string(i),true)
				//else global.skin_bloqueado[i] = false
			}
		#endregion
		
		#region Prendas
			for(i=0 ; i<=global.max_prendas ; i++){
				if (i==0) { global.prenda_bloqueada[i]=false }
				else {
					if !(global.jugador_nuevo) global.prenda_bloqueada[i] = false
					else global.prenda_bloqueada[i] = ini_read_real("jugadorDatos","prenda_bloqueada"+string(i),true)
				}
				//else global.prenda_bloqueada[i] = false
				//else global.prenda_bloqueada[i] = ini_read_real("jugadorDatos","prenda_bloqueada"+string(i),true)
			}
		#endregion
		
		#region Accesorios
			for(i=0 ; i<=global.max_accesorios ; i++){
				if (i==0) { global.accesorio_bloqueado[i]=false }
				else {
					if !(global.jugador_nuevo){
						var cant_desbl = 5
						if (i<= cant_desbl) global.accesorio_bloqueado[i] = false
						else global.accesorio_bloqueado[i] = ini_read_real("jugadorDatos","accesorio_bloqueado"+string(i),true)
					}
					else {
						global.accesorio_bloqueado[i] = ini_read_real("jugadorDatos","accesorio_bloqueado"+string(i),true)
					}
				}
				//else global.accesorio_bloqueado[i] = false
				//else global.accesorio_bloqueado[i] = ini_read_real("jugadorDatos","accesorio_bloqueado"+string(i),true)
			}
		#endregion
		
		#region Sombreros
			for(i=0 ; i<=global.max_sombreros ; i++){
				if (i==0) { global.sombrero_bloqueado[i]=false }
				else {
					if !(global.jugador_nuevo){
						var cant_desbl = 6
						if (i<= cant_desbl) global.sombrero_bloqueado[i] = false
						else global.sombrero_bloqueado[i] = ini_read_real("jugadorDatos","sombrero_bloqueado"+string(i),true)
					}
					else {
						global.sombrero_bloqueado[i] = ini_read_real("jugadorDatos","sombrero_bloqueado"+string(i),true)
					}
				}
				//else global.sombrero_bloqueado[i] = false
				//else global.sombrero_bloqueado[i] = ini_read_real("jugadorDatos","sombrero_bloqueado"+string(i),true)
			}
		#endregion
		
		#region Mascotas
			for(i=0 ; i<=global.max_mascotas ; i++){
				if (i==0) global.mascota_bloqueada[i]=false
				else {
					//if (global.regaloSkins) global.mascota_bloqueada[i] = false
					 global.mascota_bloqueada[i] = ini_read_real("jugadorDatos","mascota_bloqueada"+string(i),true)
				}
				//else global.mascota_bloqueada[i] = false
				//else global.mascota_bloqueada[i] = ini_read_real("jugadorDatos","mascota_bloqueada"+string(i),true)
			}
		#endregion
		
		#region Configura los archivos de los niveles personalizados
			for(i=0 ; i<global.max_niveles_guardar ; i++) global.nivel_editor[i] = "\\ nivel_editor"+string(i)+"_editor.txt"
			#region Borra el archivo de los niveles editados		
				if (borrarNivelesEditados == 0){
					for(i=0 ; i<global.max_niveles_guardar ; i++){
						if (file_exists(working_directory + global.nivel_editor[i])) file_delete(working_directory + global.nivel_editor[i])
					}
				}
				borrarNivelesEditados = 1
				ini_write_real("editor","borrarNiveles",borrarNivelesEditados)
			#endregion
		#endregion
		
	ini_close()
#endregion


// Activa la musica
if (global.musica==true and !audio_is_playing(snd_fondo1)) audio_play_sound(snd_fondo1,100,true) 



#region Contr los pop ups segun las veces jugadas
	if (global.vecesJugado==1 or global.vecesJugado==4) {
		if !(global.regaloSkins) { alarm[1] = 25 }  //Alarma que activa el pop up de la oferta
		else { 
			if !(global.unirse_discord) alarm[5] = 25  //Alarma que activa el pop up del servidor de discord
		}
	}
	else if (global.vecesJugado==2 or global.vecesJugado==5) {
		if !(global.unirse_discord) alarm[5] = 25  //Alarma que activa el pop up de calificar
		
	}
	//alarm[5] = 25 
#endregion


#region Aumenta y Guarda las veces jugadas
	global.vecesJugado+=1
	ini_open("comandos.ini")
		ini_write_real("jugadorDatos","vecesJugado",global.vecesJugado)
	ini_close()
#endregion


#region Solicita los juegos a promocionar
	global.promocionar_juego = false
	if (os_type!=os_ios) scr_solicitar_juegos_promocion()
#endregion



