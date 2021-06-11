/// @description  lo dibuja
draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_white,1)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_grande)

if !(btn_seleccionado){
	if (instance_exists(obj_contr_tarea11)){
		if (obj_contr_tarea11.mostrarValor) draw_text_outline(""+string(valor+1),x,y,c_black,1,1,c_white)
	}
}
else {
	draw_text_outline(""+string(valor+1),x,y,c_black,1,1,c_white)
}
	




