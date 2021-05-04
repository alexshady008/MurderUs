/// @description SE FINALIZA EL JUEGO
// Puede escribir su código en este editor
scr_publicidad()

if (instance_exists(obj_contr_efectos)) instance_destroy(obj_contr_efectos)

scr_destruye_listas_locales()
scr_destruye_listas_globales()

global.conectado=false
scr_desconectar_del_servidor()

room_goto(rm_menu)
