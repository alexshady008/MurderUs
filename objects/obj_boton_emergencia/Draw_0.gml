/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (marcado) draw_sprite_ext(spr_boton_emergencia_marcador,image_index,x,y,1.1,1.1,0,c_white,1)

draw_sprite_ext(sprite_index, 0, x, y+10, 1, 1, 0, c_black, 0.35)
draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_white, 1)


if (global.editor==false){
	if (global.usar_btn_emergencia>0) {
		draw_sprite_ext(sprite_index, 0, x, y, 1, 1, 0, c_black, 0.35)
		draw_set_halign(fa_center)
		draw_set_valign(fa_middle)
		draw_set_font(fnt_normal)
		draw_text_outline2(""+string(global.usar_btn_emergencia),x,y,c_black,1,1,c_white)
	}	
}