/// @description Contr su color y la bolsa del cadaver
// Puede escribir su código en este editor

//scr_contr_personaje_parado()
if (skin==1) color = scr_crear_color(contrColor)
else color = c_white


//Crea la bolsa para guardar al cadaver si es un complice
if (complice) {
	bolsa_cadaver = instance_create_layer(x, y, "Personajes", obj_cargando_cadaver)
	bolsa_cadaver.creador = id
}	
