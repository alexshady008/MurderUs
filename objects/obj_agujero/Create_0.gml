/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

depth = global.depth_piso
//tipoObjeto = 13
tipo = "agujero"

// COntr el sprite
if (room==rm_nivel2 or room==rm_nivel2_editor) sprite_index = spr_alcantarilla_2
else if (room==rm_nivel3 or room==rm_nivel3_editor) sprite_index = spr_hueco_alcantarilla

image_index = 0
image_speed = 0
marcado = false
rango_marcador = 150
tiempo = 10

categoria = "I"
tipoObjeto = 1
spr_mask = noone
if (global.editor) scr_contr_obj_creado(obj_agujero, 20, false)
