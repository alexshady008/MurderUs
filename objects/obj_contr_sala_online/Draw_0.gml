/// @description Dibuja las palabras
// Puede escribir su código en este editor

#region Propiedades de la camara
	var cam_x = camera_get_view_x(view_camera[0]) 
	var cam_y = camera_get_view_y(view_camera[0]) 
#endregion


#region  Dibuja el cartel del mapa
	var posX_cartel = 640
	var posY_cartel = 192
	switch(global.tipo_mapa_sala){
		case 1: draw_sprite(spr_cartel_mapa_lobby,0,posX_cartel,posY_cartel) break
		case 2: draw_sprite(spr_cartel_mapa_lobby,1,posX_cartel,posY_cartel) break
		case 3: draw_sprite(spr_cartel_mapa_lobby,2,posX_cartel,posY_cartel) break
		default: 
			//if (global.datos_nivel_pers!=noone) scr_contr_mapa_datos()
			draw_set_font(fnt_normal)
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)
			switch(os_get_language()) {
				case "es": var tipo = "PERSONALIZADO" break;
				case "pt": var tipo = "PERSONALIZADO" break;
				case "it": var tipo = "PERSONALIZZATO" break;
				default: var tipo = "PERSONALIZED" break;
			}
			draw_text_outline(tipo,posX_cartel,posY_cartel,c_black,1,1,c_white)
		break
	}
#endregion


#region Dibuja el codigo
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_grande)
var posX = cam_x+640
var posY = cam_y+620
switch(os_get_language()) {
	case "es": draw_text_outline("CÓDIGO",posX,posY,c_black,1,1,c_white) break;
	case "pt": draw_text_outline("CÓDIGO",posX,posY,c_black,1,1,c_white) break;
	case "it": draw_text_outline("CODICE",posX,posY,c_black,1,1,c_white) break;
	case "ru": draw_set_font(fnt_grande_ru) draw_text_outline("КОД",posX,posY,c_black,1,1,c_white) break;
	default: draw_text_outline("CODE",posX,posY,c_black,1,1,c_white) break;
}
draw_text_outline(""+string(global.idSala),posX,posY+50,c_black,1,1,c_white) 
#endregion 


draw_set_font(fnt_normal)

#region Avisa del intento de conexion o cuando se comienza automaticamente
var posX = cam_x + (room_width/2)
var posY = cam_y + 50
draw_set_halign(fa_left)
if !(global.conectado){
	var intento = max_intentar_conectar-(intentar_conectar-1)
	switch(os_get_language()) {
		case "es": draw_text_outline("CONECTANDO EN "+string(intento),posX,posY,c_black,1,1,c_white) break;
		case "pt": draw_text_outline("LIGANDO EM "+string(intento),posX,posY,c_black,1,1,c_white) break;
		case "it": draw_text_outline("CONNESSIONE IN "+string(intento),posX,posY,c_black,1,1,c_white) break;
		case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ПОДКЛЮЧЕНИЕ "+string(intento),posX,posY,c_black,1,1,c_white) break;
		default: draw_text_outline("CONNECTING IN "+string(intento),posX,posY,c_black,1,1,c_white) break;
	}	
}
else {
	if (contador_comenzar_juego != -1){
		var comenzando = contador_comenzar_juego
		switch(os_get_language()) {
			case "es": draw_text_outline("COMENZANDO EN "+string(comenzando),posX,posY,c_black,1,1,c_white) break;
			case "pt": draw_text_outline("LIGANDO EM "+string(comenzando),posX,posY,c_black,1,1,c_white) break;
			case "it": draw_text_outline("CONNESSIONE IN "+string(comenzando),posX,posY,c_black,1,1,c_white) break;
			case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ПОДКЛЮЧЕНИЕ "+string(comenzando),posX,posY,c_black,1,1,c_white) break;
			default: draw_text_outline("CONNECTING IN "+string(comenzando),posX,posY,c_black,1,1,c_white) break;
		}
	}
}
#endregion



#region Dibuja la cant de jugadores
var posX = cam_x + 20
var posY = cam_y + 50
var cant_jugadores = ds_list_size(global.jugadores_id)
draw_set_halign(fa_left)
switch(os_get_language()) {
	case "es": draw_text_outline("JUGADORES: "+string(cant_jugadores)+" / "+string(global.cant_jugadores_sala),posX,posY,c_black,1,1,c_white) break;
	case "pt": draw_text_outline("JOGADORES: "+string(cant_jugadores)+" / "+string(global.cant_jugadores_sala),posX,posY,c_black,1,1,c_white) break;
	case "it": draw_text_outline("GIOCATORI: "+string(cant_jugadores)+" / "+string(global.cant_jugadores_sala),posX,posY,c_black,1,1,c_white) break;
	case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ИГРОКИ: "+string(cant_jugadores)+" / "+string(global.cant_jugadores_sala),posX,posY,c_black,1,1,c_white) break;
	default: draw_text_outline("PLAYERS: "+string(cant_jugadores)+" / "+string(global.cant_jugadores_sala),posX,posY,c_black,1,1,c_white) break;
}
//draw_text_outline(""+string(ds_list_size(global.jugadores_id))+" / "+string(global.cant_jugadores_sala),posX,posY+50,c_black,1,1,c_white) 
#endregion


#region Dibuja la cant de impostores
var posX = cam_x + 20
var posY = cam_y + 100
draw_set_halign(fa_left)
switch(os_get_language()) {
	case "es": draw_text_outline("ASESINOS: "+string(global.cant_impostor_sala),posX,posY,c_black,1,1,c_white) break;
	case "pt": draw_text_outline("ASSASSINOS: "+string(global.cant_impostor_sala),posX,posY,c_black,1,1,c_white) break;
	case "it": draw_text_outline("ASSASSINI: "+string(global.cant_impostor_sala),posX,posY,c_black,1,1,c_white) break;
	case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("УБИЙЦЫ: "+string(global.cant_impostor_sala),posX,posY,c_black,1,1,c_white) break;
	default: draw_text_outline("KILLERS: "+string(global.cant_impostor_sala),posX,posY,c_black,1,1,c_white) break;
}
#endregion


#region Dibuja la cant de detectives
var posX = cam_x + 20
var posY = cam_y + 150
draw_set_halign(fa_left)
switch(os_get_language()) {
	case "es": draw_text_outline("DETECTIVES: "+string(global.cant_detective_sala),posX,posY,c_black,1,1,c_white) break;
	case "pt": draw_text_outline("DETETIVES: "+string(global.cant_detective_sala),posX,posY,c_black,1,1,c_white) break;
	case "it": draw_text_outline("DETECTIVE: "+string(global.cant_detective_sala),posX,posY,c_black,1,1,c_white) break;
	case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ДЕТЕКТИВЫ: "+string(global.cant_detective_sala),posX,posY,c_black,1,1,c_white) break;
	default: draw_text_outline("DETECTIVES: "+string(global.cant_detective_sala),posX,posY,c_black,1,1,c_white) break;
}
#endregion


#region Dibuja la cant de complices
var posX = cam_x + 20
var posY = cam_y + 200
draw_set_halign(fa_left)
switch(os_get_language()) {
	case "es": draw_text_outline("COMPLICES: "+string(global.cant_complice_sala),posX,posY,c_black,1,1,c_white) break;
	case "pt": draw_text_outline("COMPLICES: "+string(global.cant_complice_sala),posX,posY,c_black,1,1,c_white) break;
	case "it": draw_text_outline("COMPLICI: "+string(global.cant_complice_sala),posX,posY,c_black,1,1,c_white) break;
	case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("сообщник: "+string(global.cant_complice_sala),posX,posY,c_black,1,1,c_white) break;
	default: draw_text_outline("ACCOMPLICES: "+string(global.cant_complice_sala),posX,posY,c_black,1,1,c_white) break;
}
#endregion


#region Dibuja la cant de tareas
var posX = cam_x + 20
var posY = cam_y + 250
draw_set_halign(fa_left)
switch(os_get_language()) {
	case "es": draw_text_outline("TAREAS: "+string(global.max_tareas),posX,posY,c_black,1,1,c_white) break;
	case "pt": draw_text_outline("TAREFAS: "+string(global.max_tareas),posX,posY,c_black,1,1,c_white) break;
	case "it": draw_text_outline("COMPITI: "+string(global.max_tareas),posX,posY,c_black,1,1,c_white) break;
	case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ЗАДАЧИ: "+string(global.max_tareas),posX,posY,c_black,1,1,c_white) break;
	default: draw_text_outline("TASKS: "+string(global.max_tareas),posX,posY,c_black,1,1,c_white) break;
}
#endregion


#region Dibuja el tipo de sala
var posX = cam_x + 20
var posY = cam_y + 300
draw_set_halign(fa_left)

if (global.tipo_sala=="publica"){
	switch(os_get_language()) {
		case "es": var tipo = "PÚBLICA" break;
		case "pt": var tipo = "PÚBLICO" break;
		case "it": var tipo = "PUBBLICO" break;
		case "ru": var tipo = "ОБЩЕСТВЕННЫЙ" break;
		default: var tipo = "PUBLIC" break;
	}
}
else {
	switch(os_get_language()) {
		case "es": var tipo = "PRIVADA" break;
		case "pt": var tipo = "PRIVADO" break;
		case "it": var tipo = "PRIVATO" break;
		case "ru": var tipo = "ЧАСТНЫЙ" break;
		default: var tipo = "PRIVATE" break;
	}
}

switch(os_get_language()) {
	case "es": draw_text_outline("TIPO: "+tipo,posX,posY,c_black,1,1,c_white) break;
	case "pt": draw_text_outline("TIPO: "+tipo,posX,posY,c_black,1,1,c_white) break;
	case "it": draw_text_outline("TIPO: "+tipo,posX,posY,c_black,1,1,c_white) break;
	case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ТИП: "+tipo,posX,posY,c_black,1,1,c_white) break;
	default: draw_text_outline("TYPE: "+tipo,posX,posY,c_black,1,1,c_white) break;
}
#endregion


#region Dibuja el tipo de mapa
var posX = cam_x + 20
var posY = cam_y + 350
draw_set_halign(fa_left)

switch(global.tipo_mapa_sala){
	case 1: tipo = "SPACESHIP" break
	case 2: tipo = "LYRA" break
	case 3: tipo = "CENTRYX" break
	default: 
		switch(os_get_language()) {
			case "es": var tipo = "PERSONALIZADO" break;
			case "pt": var tipo = "PERSONALIZADO" break;
			case "it": var tipo = "PERSONALIZZATO" break;
			case "ru": var tipo = "ПЕРСОНАЛИЗИРОВАННЫЕ" break;
			default: var tipo = "PERSONALIZED" break;
		}
	break
}

switch(os_get_language()) {
	case "es": draw_text_outline("MAPA: "+tipo,posX,posY,c_black,1,1,c_white) break;
	case "pt": draw_text_outline("MAPA: "+tipo,posX,posY,c_black,1,1,c_white) break;
	case "it": draw_text_outline("MAPPA: "+tipo,posX,posY,c_black,1,1,c_white) break;
	case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("КАРТА: "+tipo,posX,posY,c_black,1,1,c_white) break;
	default: draw_text_outline("MAP: "+tipo,posX,posY,c_black,1,1,c_white) break;
}
#endregion


#region Dibuja el tiempo de la dicusion
var posX = cam_x + 20
var posY = cam_y + 400
draw_set_halign(fa_left)
switch(os_get_language()) {
	case "es": draw_text_outline("DISCUSIÓN: "+string(global.tiempo_votacion)+" SEG",posX,posY,c_black,1,1,c_white) break;
	case "pt": draw_text_outline("DISCUSSÃO: "+string(global.tiempo_votacion)+" SEG",posX,posY,c_black,1,1,c_white)  break;
	case "it": draw_text_outline("DISCUSSIONE: "+string(global.tiempo_votacion)+" SEC",posX,posY,c_black,1,1,c_white)  break;
	case "ru": draw_set_font(fnt_normal_ru) draw_text_outline("ОБСУЖДЕНИЕ: "+string(global.tiempo_votacion)+" СЕK",posX,posY,c_black,1,1,c_white)  break;
	default: draw_text_outline("DISCUSSION: "+string(global.tiempo_votacion)+" SEC",posX,posY,c_black,1,1,c_white)  break;
}
#endregion


#region Dibuja si es el administrador o no
var posX = cam_x + 20
var posY = cam_y + 450
draw_set_halign(fa_left)

if (global.administrador){
	switch(os_get_language()) {
		case "es": var tipo = "SI" break;
		case "pt": var tipo = "SIM" break;
		case "it": var tipo = "SÌ" break;
		case "ru": var tipo = "YES" break;
		default: var tipo = "YES" break;
	}
}
else {
	switch(os_get_language()) {
		case "es": var tipo = "NO" break;
		case "pt": var tipo = "NÃO" break;
		case "it": var tipo = "NO" break;
		case "ru": var tipo = "NO" break;
		default: var tipo = "NO" break;
	}
}

draw_text_outline("ADMIN: "+tipo,posX,posY,c_black,1,1,c_white)
#endregion


//if (instance_exists(obj_contr_efectos)) draw_sprite_ext(spr_fondo_victoria_asesinos,0, cam_x, cam_y,1,1,0,c_white,1)



