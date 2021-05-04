/// @description Inicia el Movimiento

//Si el regalo no son monedas, entonces reducir la
//escala final del sprite a mostrar
var porcion_pantalla = global.regalo_es_monedas ? 0.25 : 0.125;
escala_destino = max(1, (room_height * porcion_pantalla) / sprite_height);
delta_escala = (escala_destino - escala) / tiempo_de_movimiento;