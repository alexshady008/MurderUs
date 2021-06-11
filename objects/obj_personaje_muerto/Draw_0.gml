/// @description Lo dibuja
// Puede escribir su código en este editor

if (sprite_muerto==1) {
	draw_sprite_ext(spr_hueso, 0, x, y-26, 1, 1, 0, c_white, 1)
}else{
	draw_sprite_ext(spr_sangre_piso_persMuerto, 0, x, y, image_xscale, 1, 0, c_white, 1)
	if (image_xscale==1) draw_sprite_ext(spr_hueso, 0, x+79, y+30, 1, 1, -90, c_white, 1)	
	else if (image_xscale==-1) draw_sprite_ext(spr_hueso, 0, x-79, y+30, 1, 1, 90, c_white, 1)	
	
}


draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, color, 1)

if (sprite_muerto==1){
	scr_dibuja_prenda_jug_parado(prenda,0,x,y,image_alpha,image_xscale,image_yscale)
	if (sangre) draw_sprite_ext(spr_sangre_pers_muerto_parado, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 1)
}
else {
	scr_dibuja_prenda_jug_muerto(prenda,0,x,y,image_alpha,image_xscale,image_yscale)
	if (sangre) draw_sprite_ext(spr_sangre_pers_muerto_acostado, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 1)
}


#region Dibuja el sombrero y accesorio 
	scr_dibuja_accesorio_jug(accesorio,x+100,y+100,1,image_xscale,image_yscale)
	scr_dibuja_sombrero_jug(sombrero,x-30,y+100,1,image_xscale,image_yscale)
#endregion 

