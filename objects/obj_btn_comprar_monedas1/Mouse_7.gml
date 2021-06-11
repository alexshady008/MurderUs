//// @description  Compra/Adquiere el productoo

if (global.popup==false or obj_contr_tienda.interfaz_bloqueada==false) {
	escala = 1
	// Realiza la peticion a una compra consumible
	if (GPBilling_IsStoreConnected() && global.IAP_disponible) {
		// Aca se deberia agregar el id correspondiente segun el boton de compra
		var comprobarCompra = GPBilling_PurchaseProduct(global.IAP_compraID[0]);
		global.tipoDeCompra = "consumible"
		// Compra no disponible, agregue código a prueba de fallas si es necesario
		if (comprobarCompra != gpb_no_error) scr_popup_compra_error() 
	}
}