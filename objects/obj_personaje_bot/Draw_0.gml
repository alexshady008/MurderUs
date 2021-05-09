/// @description Lo dibuja
// Puede escribir su código en este editor

draw_sprite_ext(spr_sombra_pers, 0, x, y+43, 1, 1, 0, c_white, 0.35)
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, color, 1)

#region DIbuja el nombre y el icono
var posY = y-65
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_muy_chica)

if (nombre!=noone) draw_text_outline3(nombre,x,posY,c_black,1,1,c_white)
#endregion



/*
if (path_activado) draw_text_outline3("SI",x,posY,c_green,1,1,c_green)
else if !(path_activado) draw_text_outline3("NO",x,posY,c_red,1,1,c_red)

// Borrar
//if (limpiando_rastro) draw_text_outline3("LIMPIANDO...",x,posY-25,c_black,1,1,c_green)



