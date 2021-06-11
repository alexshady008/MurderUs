/// @description  lo dibuja
draw_sprite_ext(sprite_index,0,x,y,escala+(0.5),escala,0,c_white,1)


//Mensaje
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_normal_ru)
//if (os_get_language()!="ru") draw_set_font(fnt_normal)
//else draw_set_font(fnt_normal_ru)
draw_text_ext_transformed_color(x,y-10,""+string(global.mensaje), 30, 800, 0.75, 0.75, 0, color2,color2,color2,color2, 1)
