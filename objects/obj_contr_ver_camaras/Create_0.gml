/// @description Contr las camaras
// Puede escribir su código en este editor
global.ver_camaras = true
global.jugabilidad = false
camaras_creadas = false
destruccion_manual = false

// Variables para las camaras
ancho = 1280 //2
alto = 720//2
cant_camaras = 4

// Elimina la camara ya creada
scr_destruye_camara_jugador()

// Crea al obj de eliminar camaras
if !(instance_exists(obj_btn_eliminar_camaras)) instance_create_depth(0,0,depth-1,obj_btn_eliminar_camaras)

// Crea las  otras camaras
if (global.camara == noone)
{
	//Crea la variable de las posiciones de las camaras
	scr_contr_posiciones_camaras_mapas()
	
	for (i=0 ; i<cant_camaras ; i++){
		view_visible[i] = true
		
		// Contr la var nX
		if (i<(cant_camaras/2)) var nX=0
		else var nX=1
		
		// COntr la var nY
		if (i==0 or i==2) var nY=0
		else var nY=1
	
		// Crea la camara
		//global.camara[i] = camera_create_view(0, (alto)*i, ancho, alto, 0, -1, -1, -1, 0, 0)
		global.camara[i] = camera_create_view(posX[i], posY[i], ancho, alto, 0, -1, -1, -1, 0, 0)
		view_set_camera(i, global.camara[i])
	
		// Configura el posicionamiento de la camara
		view_yport[i] = (alto/2) * nY
		view_xport[i] = (ancho/2) * nX
		view_hport[i] = (alto/2)
		view_wport[i] = (ancho/2)
	}
	
	camaras_creadas = true

}