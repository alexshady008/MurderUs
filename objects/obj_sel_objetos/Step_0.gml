/// @description Contr su visibilidad y Sprite
// Puede escribir su código en este editor
image_speed = 0

#region Contr la visibilidad
	if (global.visible_opciones) visible = true 
	else visible = false 
#endregion

#region Contr el tipo de obj
	if (obj_inicial != noone){
		tipo_obj = obj_inicial + (global.max_objetos * (global.lista_obj-1) )
	}
#endregion



#region Controla el sprite y la var obj
switch(global.categoria_obj)
{
	// Tareas
	case 1:   
		switch(global.mapa_elegido){
			case 1: sprite_index = spr_seleccionables_tareasMapa1 break;  // Mapa 1
			case 2: sprite_index = spr_seleccionables_tareasMapa2 break;  // Mapa 2
			case 3: sprite_index = spr_seleccionables_tareasMapa3 break;  // Mapa 3
		}
	break;
	// Puertas
	case 2: sprite_index = spr_seleccionables_puertas break;
	// Salon Principal
	case 3: sprite_index = spr_seleccionables_salonPrincipal break;
	// Dormitorio
	case 4: sprite_index = spr_seleccionables_dormitorio break;
	// Ciencia
	case 5: sprite_index = spr_seleccionables_ciencia break;
	// Maquinaria
	case 6: sprite_index = spr_seleccionables_maquinaria break;
	// Deposito
	case 7: sprite_index = spr_seleccionables_deposito break;
	// Control
	case 8: sprite_index = spr_seleccionables_control break;
	// Energia
	case 9: sprite_index = spr_seleccionables_energia break;
	// Jardin
	case 10: sprite_index = spr_seleccionables_jardin break;
	// Minerales
	case 11: sprite_index = spr_seleccionables_minerales break;
	// Otros
	case 12: sprite_index = spr_seleccionables_otros break;
	// Interactivos
	case 13: sprite_index = spr_seleccionables_obj_interactivos break;
}

var index = tipo_obj-1
if (index < sprite_get_number(sprite_index)) {
	image_index = index
}	
else {
	sprite_index = spr_seleccionable_vacio
	image_index = 0
}

image_speed = 0
#endregion
