// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_asesinar_bot(){
	var pers_muerto = instance_create_depth(x,y,global.depth_piso-1,obj_personaje_muerto)
	//pers_muerto.idJugador = idJugador
	pers_muerto.contrColor = contrColor
	pers_muerto.skin = skin
	pers_muerto.prenda = prenda
	pers_muerto.sombrero = sombrero
	pers_muerto.accesorio = accesorio
	pers_muerto.mascota = mascota
	if (direccion != noone) pers_muerto.direccion = direccion
	else pers_muerto.direccion = dirAnterior
	pers_muerto.alarm[0]  = 1
	
	instance_destroy()
}