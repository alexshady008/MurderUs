/// @description Propiedades del juego
// Puede escribir su código en este editor
global.nombre_async = noone  //NORRAR DESPUES
#region Variables
	global.jugabilidad = true  //Contr si el juego esta bloqueado o no
	global.menuBloq = false  //Contr si el menu esta bloqueado o no
	global.vecesJugarMenu = 0
	global.popup = false  // 
	global.maxSkins = 10  //Cant maxima de skins que hay
	global.depth_techo = -5500
	global.depth_objetos_encima = -5300
	global.depth_nombre_habitacion = -10000
	global.depth_piso = 10
	global.pos_sombra_objetos1 = 10
	global.pos_sombra_objetos2 = 5
	global.max_tareas = 5
	global.fps_juego = 30
	global.area_sonido = 500
	global.anchoPantalla = 1280
	global.altoPantalla = 720
	global.max_niveles_guardar = 10
	global.max_skins = 36  //Cantidad totales de skins
	global.max_prendas = 16
	global.max_accesorios = 49  //22
	global.max_sombreros = 34  //22
	global.max_mascotas = 34  //22
	global.precio_skins = 25 //Monedas   //50
	global.precio_prendas = 15 //Monedas  //30
	global.precio_accesorios = 10 //Monedas  //20
	global.precio_sombreros = 10 //Monedas  //20
	global.precio_mascotas = 15  //Monedas  //30
	global.contr_monedas_ganadas = 0
	global.camara = noone
	global.escribiendo = false
	global.slider_presionado=false
	global.historia = false
#endregion


#region Variables del multijugador
	global.servidorUSATest = "3.15.172.28"; // Ip del servidor de prueba de USA
	//global.servidorUSA = "18.189.22.92"; // Ip del servidor de USA
	global.servidorUSA = "3.16.149.68"; // Ip del servidor de USA
	global.servidorBrasil = "18.228.157.144"; // Ip del servidor de Brasil Test
	global.servidor2Brasil = "18.228.157.144"; // Ip del servidor de Brasil Test
	global.servidorEuropa = "18.159.107.36"; // Ip del servidor de Europa
	//global.servidorBrasil = "18.228.151.112"; // Ip del servidor de Brasil
	//global.servidor2Brasil = "15.228.85.61"; // Ip del servidor 2 de Brasil
	global.servidorLocal = "localhost"; // Ip del servidor de Europa
	//global.ipServidor = global.servidorLocal  //Ip 
	//global.ipServidor = global.servidorLocal  //Ip 
	global.ipServidor = global.servidorUSA  //Ip 
	
	global.puerto = 7004 //Puerto  //7003
	global.cliente = network_create_socket(network_socket_udp);  //Crea el socket udp
	global.idLocal = 0   
	global.idSala = noone
	global.jugadores_lista = noone
	global.jugadores_id = noone
	global.servidorDatos = noone
	global.tipoDesconexion = noone
	global.mensajes_lista = noone
	global.impostores_lista = noone
	global.detective_lista = noone
	global.complices_lista = noone
	global.lista_num_tareas = noone
	global.servidor_comprobado = false
	global.lista_tareas = noone
	global.nombre_habitaciones = noone
	
	//scr_comprobar_servidor_mas_cercano(global.servidorUSATest)
	#region controla los servidores
		scr_contr_servidor_cercano()
	#endregion
#endregion


#region Variables ini
	ini_open("comandos.ini")
		//randomize()
		//global.nombre = choose("Chris", "Alex", "Juan", "Arya", "Rebbeca", "Paul", "Alberto", "Nico", "Lucas", "Alejandra", "Marcelo", "Esteban", "Pablo", "Agustina", "Florencia", "Michelle")
		global.nombre = ini_read_string("jugadorDatos","nombre","MurderUs")
		global.publicidad = ini_read_real("jugadorDatos","publicidad",true)
		global.skinElegido = ini_read_real("jugadorDatos","skin",1)
		global.colorElegido = 1
		global.prendaElegida = ini_read_real("jugadorDatos","prenda",0)
		global.accesorioElegido = ini_read_real("jugadorDatos","accesorio",0)
		global.sombreroElegido = ini_read_real("jugadorDatos","sombrero",0)
		global.mascotaElegida = ini_read_real("jugadorDatos","mascota",0)
		global.skinsDesbloqueados = ini_read_real("jugadorDatos","skinsDesbloqueados",5)
		global.regaloSkins = ini_read_real("jugadorDatos","regaloSkins",false)
		global.unirse_discord = ini_read_real("jugadorDatos","unirse_discord",false)
		global.monedas = ini_read_real("jugadorDatos","monedas",0)
		global.vecesJugado = ini_read_real("jugadorDatos","vecesJugado",0)
		global.musica = ini_read_real("jugadorDatos","sonido",true)
		global.luz = ini_read_real("jugadorDatos","luz",false)
		global.contr_luz_popup = ini_read_real("jugadorDatos","luz_popup",false)
		global.mostrar_promocion_fallRun = ini_read_real("jugadorDatos","mostrar_promocion_fallRun",true)
		global.mostrar_promocion_stickFight = ini_read_real("jugadorDatos","mostrar_promocion_stickFight",true)
		global.mostrar_promocion_stickheroes = ini_read_real("jugadorDatos","mostrar_promocion_stickheroes",true)
		global.elegir_tipo_vestimenta = ini_read_real("jugadorDatos","tipo_vestimenta_elegir",0)
		global.skins_comprados = ini_read_real("jugadorDatos","skins_comprados",false)
		global.prendas_compradas = ini_read_real("jugadorDatos","prendas_compradas",false)
		global.accesorios_comprados = ini_read_real("jugadorDatos","accesorios_comprados",false)
		global.sombreros_comprados = ini_read_real("jugadorDatos","sombreros_comprados",false)
		global.mascotas_compradas = ini_read_real("jugadorDatos","mascotas_compradas",false)
		global.super_oferta_comprada = ini_read_real("jugadorDatos","super_oferta_comprada",false) 
		global.contr_jugador_nuevo = ini_read_real("jugadorDatos","contr_jugador_nuevo",false) 
		borrarNivelesEditados =ini_read_real("editor","borrarNiveles",0)
		global.tutorial_editor =ini_read_real("editor","tutorial_editor",0)
		global.tutorial_historia_juego =ini_read_real("jugadorDatos","tutorial_historia_juego",false)
		//for(i=0 ; i<global.max_niveles_guardar ; i++) global.nombre_nivel[i] = ini_read_string("editor","nivel"+string(i),false)
	
		#region Contr el nombre
		if (global.nombre == "MurderUs") {
			//alarm[0] = 25  
			scr_mejorar_nombre_inicial()
			ini_write_string("jugadorDatos","nombre",global.nombre)
		}	
		#endregion
		
		#region COntr si es un jugador nuevo o no
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
		
		#region Contr los skins
			for(i=0 ; i<global.max_skins ; i++){
				if (i==0) global.skin_bloqueado[i] = false
				else global.skin_bloqueado[i] = ini_read_real("jugadorDatos","skin_bloqueado"+string(i),true)
				//else global.skin_bloqueado[i] = false
			}
		#endregion
		
		#region Contr las prendas
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
		
		#region Contr los accesorios
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
		
		#region Contr los sombreros
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
		
		#region Contr las mascotas
			for(i=0 ; i<=global.max_mascotas ; i++){
				if (i==0) global.mascota_bloqueada[i]=false
				else {
					if (global.regaloSkins) global.mascota_bloqueada[i] = false
					else global.mascota_bloqueada[i] = ini_read_real("jugadorDatos","mascota_bloqueada"+string(i),true)
				}
				//else global.mascota_bloqueada[i] = false
				//else global.mascota_bloqueada[i] = ini_read_real("jugadorDatos","mascota_bloqueada"+string(i),true)
			}
		#endregion
		
	ini_close()
#endregion


#region /// Var inis editor de niveles y comunidada
	
	#region arcivos de texto de los niveles editados
		for(i=0 ; i<global.max_niveles_guardar ; i++){
			//global.nivel[i] = "\\ nivel"+string(i)+"_editor.txt"
			global.nivel_editor[i] = "\\ nivel_editor"+string(i)+"_editor.txt"
		}
		//global.nivel_prueba = "\\ nivel_prueba.txt"

		#region Borra el archivo de los niveles editados		
			if (borrarNivelesEditados == 0){
				for(i=0 ; i<global.max_niveles_guardar ; i++){
					if (file_exists(working_directory + global.nivel_editor[i])) file_delete(working_directory + global.nivel_editor[i])
				}
			}
		
			borrarNivelesEditados = 1
			ini_open("comandos.ini")
			ini_write_real("editor","borrarNiveles",borrarNivelesEditados)
			ini_close()
		#endregion
	
	#endregion

#endregion


#region Activa la musica
	if (global.musica==true and !audio_is_playing(snd_fondo1)) audio_play_sound(snd_fondo1,100,true) 
#endregion

//room_goto(rm_historia)

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


//Solicita los juegos a promocionar
global.promocionar_juego = false
if (os_type!=os_ios) scr_solicitar_juegos_promocion()



