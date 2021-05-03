/// @description Variables de Movimiento y Escala

tiempo_de_movimiento = 2 * room_speed; //2 segundos de movimiento

#region Posicion

destino_x = room_width * 0.5;
destino_y = room_height * 0.5;

var distancia_a_destino = point_distance(x, y, destino_x, destino_y);
delta_movimiento = distancia_a_destino / tiempo_de_movimiento;
#endregion

#region Escala

escala = 1;
escala_destino = 1;
delta_escala = 0;

#endregion

#region Recuadro que tapa el fondo

alpha = 0;
alpha_destino = 1;
delta_alpha = (alpha_destino - alpha) / tiempo_de_movimiento;

back_color = make_color_rgb(25, 25, 25);

#endregion