/// Letras con bordes
function draw_text_outline2(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {

	draw_set_alpha(argument4)
	draw_set_colour(argument3)
	draw_text(argument1+2,argument2+2,string(argument0))
	draw_text(argument1-2,argument2-2,string(argument0))
	draw_text(argument1,argument2+2,string(argument0))
	draw_text(argument1+2,argument2,string(argument0))
	draw_text(argument1,argument2-2,string(argument0))
	draw_text(argument1-2,argument2,string(argument0))
	draw_text(argument1-2,argument2+2,string(argument0))
	draw_text(argument1+2,argument2-2,string(argument0))
	draw_set_alpha(argument5)
	draw_set_colour(argument6)
	draw_text(argument1,argument2,string(argument0))



}
