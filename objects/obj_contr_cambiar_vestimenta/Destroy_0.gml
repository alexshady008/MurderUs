/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

global.cambiarVestimenta = false
global.jugabilidad = true

instance_destroy(comprarSkins)
instance_destroy(eliminarAnuncio)
instance_destroy(comprarSuperOferta)
instance_destroy(obj_btn_eliminar_popup)
if (instance_exists(obj_personaje_muestra)) instance_destroy(obj_personaje_muestra)
instance_destroy(obj_btn_vestimenta_skins)
instance_destroy(obj_btn_vestimenta_prendas)
instance_destroy(obj_btn_vestimenta_mascaras)
instance_destroy(obj_btn_vestimenta_gorros)
instance_destroy(obj_btn_vestimenta_mascotas)
instance_destroy(obj_btn_elegir_vestimenta)
instance_destroy(obj_btn_comprar_monedas_o_vestimenta)
instance_destroy(obj_pasar_vestimenta_izq)
instance_destroy(obj_pasar_vestimenta_der)


#region Contr y guarda los skins, prendas, accesorios, sombreros y mascotas
ini_open("comandos.ini")
	//Contr skin
	if !(global.skin_bloqueado[global.skinElegido-1]) ini_write_real("jugadorDatos","skin",global.skinElegido)
	else global.skinElegido = skin_elegido_inicialmente
	
	// Contr Prenda
	if !(global.prenda_bloqueada[global.prendaElegida]) ini_write_real("jugadorDatos","prenda",global.prendaElegida)
	else global.prendaElegida = prenda_elegida_inicialmente
	
	// Contr Accesorio
	if !(global.accesorio_bloqueado[global.accesorioElegido]) ini_write_real("jugadorDatos","accesorio",global.accesorioElegido)
	else global.accesorioElegido = accesorio_elegido_inicialmente
	
	// Contr Sombrero
	if !(global.sombrero_bloqueado[global.sombreroElegido]) ini_write_real("jugadorDatos","sombrero",global.sombreroElegido)
	else global.sombreroElegido = sombrero_elegido_inicialmente
	
	// Contr Mascota
	if !(global.mascota_bloqueada[global.mascotaElegida]) ini_write_real("jugadorDatos","mascota",global.mascotaElegida)
	else global.mascotaElegida = mascota_elegida_inicialmente
ini_close()
#endregion


if (room==rm_lobby) { scr_cambiar_vestimenta_jugador() }
else {
	obj_contr_menu.alarm[4] = 5   //Alarma que desbloquea el menu
	/*if (global.skinElegido!=skin_elegido_inicialmente or global.prendaElegida!=prenda_elegida_inicialmente
		or global.accesorioElegido!=accesorio_elegido_inicialmente or global.sombreroElegido!=sombrero_elegido_inicialmente
			or global.mascotaElegida!=mascota_elegida_inicialmente) {
				scr_popup_vestimenta_seleccionada()
	}	*/		
}	