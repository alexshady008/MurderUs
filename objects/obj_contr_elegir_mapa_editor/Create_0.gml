/// @description Variables
// Puede escribir su código en este editor
nivel_elegido = noone


//Crea a los botones del mapa
instance_create_layer(104,64,"Mapas", obj_btn_eliminar_eleccion_mapas)

var posY = 448
var mapa1 = instance_create_layer(280,posY,"Mapas", obj_btn_elegir_mapa_editor)
mapa1.mapa = 1

var mapa2 = instance_create_layer(640,posY,"Mapas", obj_btn_elegir_mapa_editor)
mapa2.mapa = 2

var mapa3 = instance_create_layer(1000,posY,"Mapas", obj_btn_elegir_mapa_editor)
mapa3.mapa = 3