// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibuja_cant_asesinos_votacion(posX, posY3){
	#region Calcula la cant de asesinos
		var cant_asesinos = 0
		var cantJugadores = ds_list_size(global.jugadores_lista)
		for(i=0 ; i<cantJugadores ; i++){
			var jugador = ds_list_find_value(global.jugadores_lista,i)
			var inst = ds_map_find_value(jugador,"idObjeto")
			if instance_exists(inst){
				if (inst.impostor==true and inst.muerto==false) cant_asesinos++ 
			}
		}
	#endregion
		
	#region Muestra la cantidad de asesinos
		var color = make_color_rgb(255,97,97)
		var borde = make_color_rgb(150,0,0)
		switch(os_get_language()) {
			case "es": draw_text_outline("CANTIDAD DE ASESINOS: "+string(cant_asesinos),posX,posY3,borde,1,1,color) break;
			case "pt": draw_text_outline("NÚMERO DE ASSASSINOS:: "+string(cant_asesinos),posX,posY3,borde,1,1,color) break;
			case "it": draw_text_outline("NUMERO DI KILLER:: "+string(cant_asesinos),posX,posY3,borde,1,1,color) break;
			case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("КОЛИЧЕСТВО УБИЙЦ:: "+string(cant_asesinos),posX,posY3,borde,1,1,color) break;
			default: draw_text_outline("NUMBER OF KILLERS:: "+string(cant_asesinos),posX,posY3,borde,1,1,color) break;
		}
	#endregion
}