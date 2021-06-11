/// @description Contr los movimientos
// Puede escribir su código en este editor

#region Contr cuando se presiona y se mueve
if (presionado==true and contr_caracteristicas==true){
	var posX_anterior = x
	var posY_anterior = y
	
	#region COntr el movimiento horizontal
		#region COntr el mov hacia la derecha
			var mov_hor_der = x+mov_hor
			if (mouse_x>=mov_hor_der) and (mov_hor_der<=posX_limite_der){
				x = mov_hor_der
			}
		#endregion
		#region COntr el mov hacia la izquierda
			var mov_hor_izq = x-mov_hor
			if (mouse_x<=mov_hor_izq) and (mov_hor_izq>=posX_limite_izq){
				x = mov_hor_izq
			}
		#endregion
	#endregion
	
	#region COntr el movimiento Vertical
		#region COntr el mov hacia arriba
			var mov_vert_arriba = y-mov_vert
			if (mouse_y<=mov_vert_arriba) and (mov_vert_arriba>=posY_limite_arriba){
				y = mov_vert_arriba
			}
		#endregion
		#region COntr el mov hacia abajo
			var mov_vert_abajo = y+mov_vert
			if (mouse_y>=mov_vert_abajo) and (mov_vert_abajo<=posY_limite_abajo){
				y = mov_vert_abajo
			}
		#endregion
	#endregion
	
	#region Contr si colisiona con otro objeto
		var col_objeto = scr_compr_colision_objeto_organizacion()
		if (col_objeto!=noone and id!=col_objeto) {
			col_objeto.x = posX_anterior
			col_objeto.y = posY_anterior
		}
		else {
			x = posX_anterior
			y = posY_anterior
		}
	#endregion	
	
	#region sonido de movimiento
		if (x!=posX_anterior or y!=posY_anterior){
			if (global.musica) audio_play_sound(snd_swosh,100,false) 
		}
	#endregion
}
#endregion


#region Comprueba si tiene un objeto al lado
	if (contr_caracteristicas){
		var obj_al_lado = instance_position(x+mov_hor,y,obj_objeto6_organizacion)
		if (obj_al_lado==noone)  obj_al_lado = instance_position(x-mov_hor,y,obj_objeto6_organizacion)
		if (obj_al_lado==noone)  obj_al_lado = instance_position(x,y-mov_vert,obj_objeto6_organizacion)
		if (obj_al_lado==noone)  obj_al_lado = instance_position(x,y+mov_vert,obj_objeto6_organizacion)
	
		if (obj_al_lado!=noone and instance_exists(obj_al_lado)) {
			completado=true
			if (global.musica==true and sonido_act==false) {
				sonido_act = true
				audio_play_sound(snd_pop,100,false) 
			}	
		} else { 
			completado=false
			sonido_act = false
		}	
	}
#endregion

//Se destruye
if !(instance_exists(obj_tareas_organizacion)) instance_destroy()