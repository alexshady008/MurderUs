/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_self()

switch(global.opciones_msjs){
	case 1: draw_sprite(spr_icono_acusacion, 0, x, y)  break;
	case 2: draw_sprite(spr_icono_defensa, 0, x, y)  break;
	case 3: draw_sprite(spr_icono_declaracion, 0, x, y)  break;
	case 4: draw_sprite(spr_icono_pregunta, 0, x, y)  break;
	case 5: draw_sprite(spr_icono_respuesta, 0, x, y)  break;
	case 6: draw_sprite(spr_icono_roles, 0, x, y)  break;
}