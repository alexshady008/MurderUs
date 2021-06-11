/// @description Variables
// Puede escribir su código en este editor
global.mostrarDatosJug = false  /// Borrar desp
global.step_delta = 1

#region Inicia variables del ranking 
	global.tipo_ranking = "historico"
#endregion

#region Inicia Variables de Anuncios
	global.app_id = "ca-app-pub-9015194457145068~2137918490";  //Id de la app de Admob
	global.interstitial_id = "ca-app-pub-9015194457145068/6236606293";  //Id del intersticial de Admob
	#region Carga un Interstecial
		global.interstitial_cargado = false;
		GoogleMobileAds_Init ( global.interstitial_id , global.app_id)
		GoogleMobileAds_LoadInterstitial();
	#endregion
#endregion	

#region Inicia Variables de las IAP

	#region Variables globales
		global.tipoDeCompra = "ninguna"
		global.IAP_disponible = false;
		global.TokensActuales = ds_list_create();
		global.ProductosActuales = ds_list_create();
		global.productosTotales = 8  //9 contando desde el 0
		global.ProductosConsumiblesTotales = 5 // Cant de productos que se pueden volver a consumir
	#endregion
	
	#region Id de los productos
		global.IAP_compraID[0] = "monedas1_consumible";
		global.IAP_compraID[1] = "monedas2_consumible";  
		global.IAP_compraID[2] = "monedas3_consumible";
		global.IAP_compraID[3] = "monedas4_consumible";
		global.IAP_compraID[4] = "monedas4_eliminar_anuncios_consumible";
		global.IAP_compraID[5] = "eliminar_anuncios_durable";
		global.IAP_compraID[6] = "oferta_skins_durable";
		global.IAP_compraID[7] = "super_oferta_skins_anuncios_mas";
	#endregion
	
	#region Variables de la cantidad de monedas
		global.cant_monedas[0] = 100
		global.cant_monedas[1] = 200
		global.cant_monedas[2] = 500
		global.cant_monedas[3] = 1000
		global.cant_monedas[4] = 1000
	#endregion
	
	#region Variables de los precios
		global.monedas1_precio = 0.99  //1
		global.monedas2_precio = 1.99 //1
		global.monedas3_precio = 2.99 //1,5
		global.monedas4_precio = 3.99 //2
		global.eliminar_anuncios_precio = 2.99 //1
		global.monedas4_eliminar_anuncios_precio = 4.99 //2
		global.todos_skins_precio = 2.99 //2
		global.desbl_skins_vestimentas_anuncios_precio = 4.99 //1
	#endregion
#endregion

// Intenta conectarte a la tienda
GPBilling_ConnectToStore();