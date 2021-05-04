/// @description Dibuja a el personaje
// Puede escribir su código en este editor
#region Propiedades de la camara
	if (room==rm_menu){
		var cam_x = 0
		var cam_y = 0
	} else {
		var cam_x = camera_get_view_x(view_camera[0]) 
		var cam_y = camera_get_view_y(view_camera[0]) 
	}	
#endregion


// DIbuja a el sprite
if (global.elegir_tipo_vestimenta==0) draw_sprite_ext(sprite_index,image_index,x,y,escalaPers,escalaPers,0,c_white,1)
else draw_sprite_ext(sprite_index,image_index,x,y,escalaPers,escalaPers,0,c_white,0.65)


// Dibuja las vestimenta
var escala = 2
var pos_x = cam_x+352
var pos_y = cam_y+336
var color = c_white

if (instance_exists(obj_personaje)) {
	var skin = obj_personaje.skin
	var tipo_color = obj_personaje.contrColor
	if (skin==1) color = scr_crear_color(tipo_color)
	else color = c_white
}
	
if (global.prendaElegida!=0) scr_dibuja_prenda_jug_parado(global.prendaElegida,0,pos_x,pos_y,1,escala,escala)
// Dibuja el accesorio
if (global.accesorioElegido!=0) scr_dibuja_accesorio_jug(global.accesorioElegido,pos_x,pos_y,1,escala,escala)
// Dibuja el sombrero
if (global.sombreroElegido!=0) scr_dibuja_sombrero_jug(global.sombreroElegido,pos_x,pos_y,1,escala,escala)
// Dibuja a la mascota
if (global.mascotaElegida!=0) scr_dibuja_mascota_parada(global.mascotaElegida,pos_x,pos_y,1,escala,color)