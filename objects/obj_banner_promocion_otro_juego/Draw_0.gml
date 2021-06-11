/// @description  lo dibuja

// Dibuja la pantalla negra
draw_set_color(c_black)
draw_set_alpha(0.65)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1)

draw_sprite_ext(sprite_index,image_index,x,y,escala,escala,0,c_white,1)


