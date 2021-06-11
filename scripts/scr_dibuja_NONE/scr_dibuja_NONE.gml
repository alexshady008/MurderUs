// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibuja_NONE(posX, posY){
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_chica)
	draw_text_outline2("NONE",posX,posY,c_black,1,1,c_white) 
}