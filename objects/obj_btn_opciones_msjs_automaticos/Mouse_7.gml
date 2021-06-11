/// @description Suelta el boton
// Puede escribir su código en este editor

if (global.chat==2 and global.etapa_msjs==1){
	if (tipo != noone and instance_exists(obj_contr_msjs_automaticos)){
		image_index = 0
		image_speed = 0
		if (global.opciones_msjs == 0) { global.opciones_msjs = tipo }
		else {
			global.mensaje = cadena
			global.max_etapa_mjes = max_etapa_msj
			if (global.etapa_msjs==global.max_etapa_mjes) instance_destroy(obj_contr_msjs_automaticos)
			else if (global.etapa_msjs<global.max_etapa_mjes){
				global.etapa_msjs++
				
				// Muestra a los jugadores
				if (global.max_etapa_mjes==2 or global.max_etapa_mjes==3 or global.max_etapa_mjes==5) var mas_opciones = instance_create_depth(x, y, depth-10, obj_mostrar_jugadores_msjes)
				// Muestra a los lugares
				else if (global.max_etapa_mjes == 4) var mas_opciones = instance_create_depth(x, y, depth-10, obj_mostrar_lugares_msjes)

				mas_opciones.btn_opcion = id
			}
		}
	}
}