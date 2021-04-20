/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

depth = -y
categoria = "T"
tipoObjeto = 6


sabotado = false
marcado = false
rango_marcador = 150

contr_crear_tarea = false
tipo = "tarea"
num_tarea = 5
contr_tarea = 5

inst_minimapa = noone

if !(global.editor) ds_list_add(global.lista_tareas,id)

scr_contr_tarea_creada(obj_tarea6)