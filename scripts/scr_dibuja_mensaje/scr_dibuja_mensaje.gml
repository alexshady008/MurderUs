// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibuja_mensaje(mensaje_mapa, posX, posY){
	var colorJug = c_white
	var skin = real(ds_map_find_value(mensaje_mapa,"skin"))
	var tipo_color = real(ds_map_find_value(mensaje_mapa,"color"))
	var accesorio = real(ds_map_find_value(mensaje_mapa,"accesorio"))
	var sombrero = real(ds_map_find_value(mensaje_mapa,"sombrero"))
	var nombre = ds_map_find_value(mensaje_mapa,"nombre")
	var mensaje = ds_map_find_value(mensaje_mapa,"mensaje")

	if (skin==1) colorJug = scr_crear_color(tipo_color)
	else colorJug = c_white
			
	scr_dibuja_icono_jugador(skin,posX,posY+15,1, colorJug)
	scr_dibuja_accesorio_jug(accesorio,posX,(posY+15)+30,1,1.5,1.5)
	scr_dibuja_sombrero_jug(sombrero,posX,(posY+15)+30,1,1.5,1.5)
	draw_text_transformed_color(posX+50,posY,nombre,1,1,0,color2,color2,color2,color2,1)
	draw_text_ext_transformed_color(posX+50,posY+30,mensaje,30,950,0.85,0.85,0,color3,color3,color3,color3,1)  //w=750 escala=1
}