/// @description Crea al personaje de muestra
// Puede escribir su código en este editor

/// variables
escala=1
personaje = instance_create_depth(x,y,-20,obj_personaje_muestra)
personaje.skins = global.skinsElegido
personaje.alarm[0] = 1
