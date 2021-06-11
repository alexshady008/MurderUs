/// @description Lo dibuja
// Puede escribir su código en este editor

draw_sprite_ext(sprite_index,0,x,y,escalaX,escalaY,0,c_white,1)


#region Dibuja su nombre
if (nombre_lugar!=noone){
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	if (escalaX==1) draw_set_font(fnt_normal)
	else draw_set_font(fnt_chica)
	draw_text_outline2(""+string(nombre_lugar),x,y,c_black,1,1,c_white)   //x-100
}
#endregion

