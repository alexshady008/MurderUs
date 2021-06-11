/// @description Compra o desbloquea a la vestimenta
// Puede escribir su código en este editor
if !(global.popup){
	presionado = false
	escala = 1
	
	// Desbloquea una vestimenta
	if (precio<=global.monedas and bloqueado==true) {
		#region Contr la cantidad de monedas
			global.monedas-=precio
			/*ini_open("comandos.ini")
			ini_write_real("jugadorDatos","monedas",global.monedas)
			ini_close()*/
		#endregion
		
		#region desbloquea y guarda la vestimenta
			switch(global.elegir_tipo_vestimenta){
				// Skins
				case 0: 
					global.skin_bloqueado[global.skinElegido-1] = false
					ini_open("comandos.ini")
					ini_write_real("jugadorDatos","skin_bloqueado"+string(global.skinElegido-1),false)
					ini_close()
				break
				// Prenda
				case 1: 
					global.prenda_bloqueada[global.prendaElegida] = false
					ini_open("comandos.ini")
					ini_write_real("jugadorDatos","prenda_bloqueada"+string(global.prendaElegida),false)
					ini_close() 
				break
				// Accesorios
				case 2: 
					global.accesorio_bloqueado[global.accesorioElegido] = false
					ini_open("comandos.ini")
					ini_write_real("jugadorDatos","accesorio_bloqueado"+string(global.accesorioElegido),false)
					ini_close()  
				break
				// Sombreros
				case 3: 
					global.sombrero_bloqueado[global.sombreroElegido] = false
					ini_open("comandos.ini")
					ini_write_real("jugadorDatos","sombrero_bloqueado"+string(global.sombreroElegido),false)
					ini_close() 
				break
				// Mascotas
				case 4: 
					global.mascota_bloqueada[global.mascotaElegida] = false
					ini_open("comandos.ini")
					ini_write_real("jugadorDatos","mascota_bloqueada"+string(global.mascotaElegida),false)
					ini_close()  
				break
			}
		#endregion
		
		#region Muestra el pop up
			scr_popup_vestimenta_desbloqueada()
		#endregion
	}
	
	// Avanza a la room de la tienda
	else if (precio>global.monedas or bloqueado==false){
		room_goto(rm_tienda)
	}
}	