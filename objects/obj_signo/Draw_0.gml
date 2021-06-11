/// @description Lo dibuja
// Puede escribir su código en este editor
draw_sprite_ext(sprite_index,signo,x,y,escala,escala,0,c_white,1)

if (instance_exists(obj_tareas_analisis) and obj_tareas_analisis.signo_elegido==noone) draw_sprite_ext(sprite_index,signo,x,y,escala,escala,0,c_black,0.65)
