/// @description Variables
// Puede escribir su código en este editor

id_jugador_asesinado = noone
id_jugador_asesino = noone

contrColor_asesino = noone
color_asesino = c_white
skin_asesino = noone
/*accesorio_asesino = noone
sombrero_asesino =noone
mascota_asesino = noone*/
tipo_animacion_asesino = 2
asesinato_parte = 1
contrColor_asesinado = noone
color_asesinado = c_white
skin_asesinado = noone
/*accesorio_asesinado = noone
sombrero_asesinado =noone
mascota_asesinado = noone*/

//alarm[0] = 300  //Tiempo en que deja de mostrarse la animacion
frame = 0
tiempo_frame = 30
max_frame = 3

// Contr el frame del fondo
fondo_frame = 0
max_fondo_frame = 3
tiempo_cambiar_frame_fondo = 5
var tiempo = tiempo_cambiar_frame_fondo/global.step_delta
if (tiempo>=1) alarm[2] = tiempo
else alarm[2] = 1



#region Propiedades de la camara
	cam_x = camera_get_view_x(view_camera[0]) 
	cam_y = camera_get_view_y(view_camera[0]) 
	cam_ancho = camera_get_view_width(view_camera[0])
	cam_alto = camera_get_view_height(view_camera[0])
#endregion


//sonido
if (global.musica) audio_play_sound(snd_reportar_cuerpo,100,false)

//Luz depth
if (instance_exists(obj_contr_luz)) obj_contr_luz.depth = -1000500
