/// @description Controla las compras dentro de la aplicacion
// Puede escribir su código en este editor

var _eventId = async_load[? "id"];
switch (_eventId) {
	
	case gpb_store_connect:
		#region  Se conecta con exito a la tienda
			//show_message_async("OK - Se conecta a la tienda!");
	        // La tienda se ha conectado, por lo que aquí generalmente agregaría los productos 
	        global.IAP_disponible = false;
	        GPBilling_AddProduct(global.IAP_compraID[0]);   // Monedas 1
	        GPBilling_AddProduct(global.IAP_compraID[1]);  // Monedas 2
			GPBilling_AddProduct(global.IAP_compraID[2]);  // Monedas 3
			GPBilling_AddProduct(global.IAP_compraID[3]);  // Monedas 4
			GPBilling_AddProduct(global.IAP_compraID[4]);  // Anuncios
			GPBilling_AddProduct(global.IAP_compraID[5]);  // Monedas4 y anuncios
			GPBilling_AddProduct(global.IAP_compraID[6]);  // Skins
			GPBilling_AddProduct(global.IAP_compraID[7]);  //  Todos

			//consulta los datos del producto
	        GPBilling_QueryProducts();  
		#endregion	
    break;
	
	
	case gpb_store_connect_failed:
		#region  Falla la conexion a la tienda
	        // La tienda no se pudo conectar, por lo tanto, intente periódicamente
			//show_message_async("ERROR - No se conecta a la tienda!");
	        alarm[1] = room_speed * 10;
		#endregion	
    break;
	
	
	case gpb_product_data_response:
	#region  Se recibe la consulta del producto, reconoce las compras y administra sus datos
	
	    // Recuperar la cadena de respuesta del objeto JSON 
	    var json_datos = async_load[? "response_json"];
	    var mapa_datos = json_decode(json_datos);
		
	    #region Si la consulta fue exitosa ...
	    if mapa_datos[? "success"] == true
	    {
			//show_message_async("Consultar - CORRECTO");
	        #region Obtenga la lista DS de productos, repítalos y agregue los datos a una variable
		        var productosLista = mapa_datos[? "skuDetails"];
		        for (var i = 0; i < ds_list_size(productosLista); ++i;)
		        {
		            // La clave skuDetails contiene una lista DS donde 
		            // cada entrada de la lista corresponde a un único 
		            // producto en forma de mapa DS. Este mapa de DS se puede analizar 
		            // para extraer detalles como el título, la descripción y
		            // precio, como se muestra en el ejemplo, a continuación:
		            var productoMapa = productosLista[| i];
		            var _num = 0;
		            while(productoMapa[? "productId"] != global.IAP_compraID[_num]){
		                ++_num;
		            }
		            global.DatosProductos[_num, 0] = productoMapa[? "productId"];
		            global.DatosProductos[_num, 1] = productoMapa[? "price"];
		            global.DatosProductos[_num, 2] = productoMapa[? "title"];
		            global.DatosProductos[_num, 3] = productoMapa[? "decription"];
		         }
			 #endregion
			 
	        #region Consulte los datos de compra (esto siempre va en ultimo lugar)
		        var json_compras = GPBilling_QueryPurchases(gpb_purchase_skutype_inapp);  //consulte los datos de compra
				var mapa_compras = json_decode(json_compras);
				//show_message_async("Por consultar datos de la compra");
				// Si la compra esta disponible, obtiene el id y el token de cada compra
		        if mapa_compras[? "success"] == true
		        {
				//show_message_async("Consultar datos de la compra - CORRECTO");
					global.IAP_disponible = true;
				
					#region  Recorre toda la lista de compras, obtiene el id y token de cada producto y llama a su funcion de consumo (si es consumible) o de compra (si es durable)
			            var lista_compras = mapa_compras[? "purchases"];
						//show_message_async("LISTA DE COMPRAS == "+string(lista_compras));
			            for (var i = 0; i < ds_list_size(lista_compras); ++i;)
			            {
			                var mapa_compra = lista_compras[| i];
							// Si la la compra es exitosa
			                if mapa_compra[? "purchaseState"] == 0
			                {
			                    // Se ha realizado la compra, así que ahora obtenga el ID del producto 
								// y la cadena única "token" para identificar la compra
			                    var idProducto = mapa_compra[? "productId"];
			                    var tokenProducto = mapa_compra[? "purchaseToken"];
			                    var agregarProducto = false;
								//show_message_async("Estado de compra==FALSE, ID=="+string(idProducto));
						
			                    // Comprueba los ID de compra existentes   ////// 
								#region Si es un producto consumible (monedas1, monedas2, monedas3, monedas4, monedas4, eliminar anuncios, ofertas)
				                    //if (idProducto == global.IAP_compraID[0]) or  (idProducto == global.IAP_compraID[1]) or (idProducto == global.IAP_compraID[2])
								    //or (idProducto == global.IAP_compraID[3]) or (idProducto == global.IAP_compraID[5]) or (idProducto == global.IAP_compraID[4])
				                    //{
							
										for (var h=0 ; h<global.productosTotales ; h++){
				                        // Es una compra de consumibles que aún no se ha utilizado así que llame a la función de consumo: 
											if (idProducto == global.IAP_compraID[h]) {
												//show_message_async("SE PREPARA PARA CONSUMIR");
											 GPBilling_ConsumeProduct(tokenProducto);
											 agregarProducto = true;
											}
										}
				                    //}
								#endregion
						
								#region Si es un producto durable (eliminar anuncios, desbloquear avatares y skins)
				                   /* else if (idProducto == global.IAP_compraID[4]) or (idProducto == global.IAP_compraID[6]) or (idProducto == global.IAP_compraID[7])  
				                    {
				                        // Es una compra no consumible, así que verifica si todavía no se ha comprado: 
				                        if mapa_compra[? "acknowledged"] == 0
				                        {
				                            // No se ha comprado, así que hazlo ahora:
				                            GPBilling_AcknowledgePurchase(tokenProducto);
				                            agregarProducto = true;
				                        }
				                    }*/
								#endregion
						
								#region Si esta disponible para la compra el producto
			                    if (agregarProducto)
			                    {
			                        // agrega todos los identificadores y tokens de compra a las  listas de DS relevantes para que puedan confirmarse más tarde
			                        ds_list_add(global.TokensActuales, tokenProducto);
			                        ds_list_add(global.ProductosActuales, idProducto);
									//show_message_async("El siguiente ID esta disponible para la compra: "+idProducto);
			                    }
								#endregion
						
			                }
			            }
						#endregion
				
			    }
				ds_map_destroy(mapa_compras);
			#endregion
			
		}
		#endregion
		
		ds_map_destroy(mapa_datos);
	#endregion
    break;
	
	
	case gpb_iap_receipt:
		#region Devolucion de llamada cuando se solicita una compra
			//show_message_async("Devolucion de llamada cuando se solicita una compra!");
		    // Obtenga la cadena de respuesta del objeto JSON 
		    var json_datos = async_load[? "response_json"];
		    var mapa_datos = json_decode(json_datos);
		    // Verifique la respuesta para ver si tuvo éxito
		    if mapa_datos[? "success"] == true
		    {
				//show_message_async("Devolucion de llamada cuando se solicita una compra! CORRECTA");
		        #region  Verifique la clave de compras para cualquier compra de producto pendiente
			        if ds_map_exists(mapa_datos, "purchases")
			        {
			            // Recorra la lista de compras y analice cada entrada para obtener los datos de compra DS map 
			            var productosLista = ds_map_find_value(mapa_datos, "purchases");
			            for (var i = 0; i < ds_list_size(productosLista);  ++i;)
			            {
			                var productoMapa = productosLista[| i];
			                var productoToken = productoMapa[? "purchaseToken"];
			                var prodSignatura = GPBilling_Purchase_GetSignature(productoToken);
			                var prodJson = GPBilling_Purchase_GetOriginalJson(productoToken);
					
			                #region Verifique la compra antes de consumirla o comprarla
				                if GPBilling_Purchase_VerifySignature(prodJson, prodSignatura)  //verificar que la compra sea legítima antes de consumirla
				                {
									/*if (global.tipoDeCompra == "consumible")
				                    { GPBilling_ConsumeProduct(productoToken); }
									else global.tipoDeCompra = "durable"
									{ GPBilling_AcknowledgePurchase(productoToken) }*/
									GPBilling_ConsumeProduct(productoToken);

				                    ds_list_add(global.TokensActuales, productoToken);
				                    ds_list_add(global.ProductosActuales, productoMapa[? "productId"]);
				                }
							#endregion
					
			           }
			        }
				#endregion
		    }
			//else {show_message_async("Devolucion de llamada cuando se solicita una compra! INCORRECTA");}
		    ds_map_destroy(mapa_datos);
		#endregion
    break;
	
	
	case gpb_product_consume_response:
	#region Se consume un producto consumible
	//show_message_async("Se consume un producto consumible!");
	    // Obtenga la cadena de respuesta del objeto JSON 
	    var jsonDatos = async_load[? "response_json"];
	    var mapaDatos = json_decode(jsonDatos);
	    var _num = -1;
	    // busca el token de compra para el producto que se ha comprado 
	    if ds_map_exists(mapaDatos, "purchaseToken") 
	    {
		//show_message_async("EXISTE TOKEN!");	
	        #region compare el token de compra de respuesta con la lista  de las solicitudes de token de compra 
	        for (var i = 0; i < ds_list_size(global.TokensActuales); ++i;)
	        {
				
	            #region si la respuesta coincide con un token en la lista de verificación de compras...
	            if mapaDatos[? "purchaseToken"] == global.TokensActuales[| i]
	            {
					
	                // Averigua a qué producto se refiere el token
					
					#region Si la compra es de monedas y consumibles
						//if (global.ProductosActuales[| i] < global.IAP_compraID[| global.ProductosConsumiblesTotales]) {
						
						// Monedas 1
						if (global.ProductosActuales[| i]==global.IAP_compraID[0]) {
							global.monedas += global.cant_monedas[0]; 
							_num = i
							scr_contr_guardar_monedas_compradas()
							scr_popup_compra_monedas(global.cant_monedas[0])
							//show_message_async("COMPRA EXITOSA!");
						} 
						
						// Monedas 2
						if (global.ProductosActuales[| i]==global.IAP_compraID[1]) {
							global.monedas += global.cant_monedas[1]; 
							_num = i
							scr_contr_guardar_monedas_compradas()
							scr_popup_compra_monedas(global.cant_monedas[1])
						} 
						
						// Monedas 3
						if (global.ProductosActuales[| i]==global.IAP_compraID[2]) {
							global.monedas += global.cant_monedas[2]; 
							_num = i
							scr_contr_guardar_monedas_compradas()
							scr_popup_compra_monedas(global.cant_monedas[2])
						}
						
						// Monedas 4
						if (global.ProductosActuales[| i]==global.IAP_compraID[3]) {
							global.monedas += global.cant_monedas[3]; 
							_num = i
							scr_contr_guardar_monedas_compradas()
							scr_popup_compra_monedas(global.cant_monedas[3])
						} 
						
						// Monedas 5
						if (global.ProductosActuales[| i]==global.IAP_compraID[4]) {
							global.monedas += global.cant_monedas[4]; 
							_num = i
							scr_contr_guardar_monedas_compradas()
							scr_publicidad_desbloqueada(2)
						} 
						
					#endregion
					
					#region Compra de eliminar publicidad
			            if (global.ProductosActuales[| i] == global.IAP_compraID[5]) {
			                _num = i;
							// SOnido
							if global.musica==true { audio_play_sound(snd_comenzar,100,false) }
							scr_publicidad_desbloqueada(1)
			            }
					#endregion
					
					#region Compra de todos los skins
			            if global.ProductosActuales[| i] == global.IAP_compraID[6]
			            {
							_num = i;
							
							// Activa sonido
							if (global.musica==true) audio_play_sound(snd_comenzar,100,false) 

						   #region Desbloquea los skins
							   global.skins_comprados = true
							   ini_open("comandos.ini")
							   ini_write_real("jugadorDatos","skins_comprados",true)
							   //ini_close()
							   //scr_desbloquear_skins(global.max_skins, global.skin_bloqueado)
							   for ( var j=0 ; j<global.max_skins ; j++ ){
									if (global.skin_bloqueado[j]) {
										global.skin_bloqueado[j] = false 
										//ini_open("comandos.ini")
										ini_write_real("jugadorDatos","skin_bloqueado"+string(j),false)
										//ini_close()
									}	
								}
								ini_close()
						   #endregion
							
						   // Muestra popup
						   scr_popup_compra_skins()
			            }
					#endregion
					
					#region Compra de todos los skins, Avatares y Eliminar Anuncios (Super Oferta)
		            if global.ProductosActuales[| i] == global.IAP_compraID[7]
		            {	
						_num = i;
						
						// Activa sonido
						if (global.musica==true) audio_play_sound(snd_comenzar,100,false) 
						
						#region Contr variable de la compra de super oferta
							global.super_oferta_comprada = true 
							ini_open("comandos.ini")
							ini_write_real("jugadorDatos","super_oferta_comprada",true)
							ini_close()
						#endregion
						
						#region Desbloquea los skins
							global.skins_comprados = true
							ini_open("comandos.ini")
							ini_write_real("jugadorDatos","skins_comprados",true)
							for ( var j=0 ; j<global.max_skins ; j++ ){
								if (global.skin_bloqueado[j]) {
									global.skin_bloqueado[j] = false 
									ini_write_real("jugadorDatos","skin_bloqueado"+string(j),false)
								}	
							}
							ini_close()
						#endregion
						
						#region Desbloquea las prendas
							global.prendas_compradas = true
							ini_open("comandos.ini")
							ini_write_real("jugadorDatos","prendas_compradas",true)
							for ( var j=0 ; j<=global.max_prendas ; j++ ){
								if (global.prenda_bloqueada[j]) {
									global.prenda_bloqueada[j] = false 
									ini_write_real("jugadorDatos","prenda_bloqueada"+string(j),false)
								}	
							}
							ini_close()
						#endregion
						
						#region Desbloquea los accesorios
							global.accesorios_comprados = true
							ini_open("comandos.ini")
							ini_write_real("jugadorDatos","accesorios_comprados",true)
							for ( var j=0 ; j<=global.max_accesorios ; j++ ){
								if (global.accesorio_bloqueado[j]) {
									global.accesorio_bloqueado[j] = false 
									ini_write_real("jugadorDatos","accesorio_bloqueado"+string(j),false)
								}	
							}
							ini_close()
						#endregion
						
						#region Desbloquea los sombreros
							global.sombreros_comprados = true
							ini_open("comandos.ini")
							ini_write_real("jugadorDatos","sombreros_comprados",true)
							for ( var j=0 ; j<=global.max_sombreros ; j++ ){
								if (global.sombrero_bloqueado[j]) {
									global.sombrero_bloqueado[j] = false 
									ini_write_real("jugadorDatos","sombrero_bloqueado"+string(j),false)
								}	
							}
							ini_close()
						#endregion
						
						#region Desbloquea las mascotas
							global.mascotas_compradas = true
							ini_open("comandos.ini")
							ini_write_real("jugadorDatos","mascotas_compradas",true)
							for ( var j=0 ; j<=global.max_mascotas ; j++ ){
								if (global.mascota_bloqueada[j]) {
									global.mascota_bloqueada[j] = false 
									ini_write_real("jugadorDatos","mascota_bloqueada"+string(j),false)
								}	
							}
							ini_close()
						#endregion
						
						#region Desbloquea los anuncios y muestra el pop up
							scr_publicidad_desbloqueada(3)
						#endregion

		            }
					#endregion
					
	            }
				#endregion
				
	        }
			#endregion
			
	        #region Si se obtiene el token, Elimine el producto comprado y su token de compra de las listas de verificación apropiadas 
	        if _num > -1
	        {
	            ds_list_delete(global.ProductosActuales, _num);
	            ds_list_delete(global.TokensActuales, _num);
	        }
			#endregion
	    }
	    ds_map_destroy(mapaDatos);
	#endregion	
    break;
	
}