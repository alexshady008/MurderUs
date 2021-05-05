/// @description Inicia el Movimiento
//Ajuste para que la escala final no sea mayor al doble
escala_destino = min(2, (room_height * 0.25) / sprite_height);
delta_escala = (escala_destino - escala) / tiempo_de_movimiento;