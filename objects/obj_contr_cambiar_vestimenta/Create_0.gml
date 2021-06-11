/// @description Varisbles
// Puede escribir su código en este editor

#region Propiedades de la camara
	if (room==rm_menu){
		var cam_x = 0
		var cam_y = 0
	} else {
		var cam_x = camera_get_view_x(view_camera[0]) 
		var cam_y = camera_get_view_y(view_camera[0]) 
	}	
#endregion

global.cambiarVestimenta = true
global.jugabilidad = false
global.menuBloq = true
global.seccion_vestimenta = 0
global.max_seccion_vestimenta = 1
global.max_botones=12  //11
guardado=false
/*presX_inicial = noone
posX1_pres = 475  //500
posY1_pres = 145  //170
posX2_pres = 960  //936
posY2_pres = 500*/

skin_elegido_inicialmente = global.skinElegido
prenda_elegida_inicialmente = global.prendaElegida
accesorio_elegido_inicialmente  = global.accesorioElegido
sombrero_elegido_inicialmente  = global.sombreroElegido
mascota_elegida_inicialmente  = global.mascotaElegida

comprarSkins = instance_create_depth(cam_x+96,cam_y+224,depth-15,obj_btn_comprar_skins)
eliminarAnuncio = instance_create_depth(cam_x+96,cam_y+352,depth-15,obj_btn_eliminar_anuncios)
comprarSuperOferta = instance_create_depth(cam_x+96,cam_y+480,depth-15,obj_btn_comprar_super_oferta)
instance_create_depth(cam_x+1080,cam_y+100,depth-15,obj_btn_eliminar_popup)  //x=camX+200  y=camY+60
instance_create_depth(cam_x+128,cam_y+640,depth-15,obj_btn_vestimenta_skins)
instance_create_depth(cam_x+384,cam_y+640,depth-15,obj_btn_vestimenta_prendas)
instance_create_depth(cam_x+640,cam_y+640,depth-15,obj_btn_vestimenta_mascaras)
instance_create_depth(cam_x+896,cam_y+640,depth-15,obj_btn_vestimenta_gorros)
instance_create_depth(cam_x+1152,cam_y+640,depth-15,obj_btn_vestimenta_mascotas)
instance_create_depth(cam_x+352,cam_y+500,depth-15,obj_btn_comprar_monedas_o_vestimenta)
instance_create_depth(cam_x+500,cam_y+332,depth-15,obj_pasar_vestimenta_izq)
instance_create_depth(cam_x+1030,cam_y+332,depth-15,obj_pasar_vestimenta_der)
var pers_muestra = instance_create_depth(cam_x+352,cam_y+336,depth-15,obj_personaje_muestra)
pers_muestra.escalaPers = 2
pers_muestra.alarm[1] = 1

//Crea los btn de elegir vestimenta

var fila=1
var btn_fila_inicial=4
var max_btn_fila=btn_fila_inicial
var posX = 600  //608
var nX = 112
var posY = 220  //240
var nY = 112
for(i=0 ; i<global.max_botones ; i++){
	var btn = instance_create_depth(cam_x+posX,cam_y+posY,depth-15,obj_btn_elegir_vestimenta)
	btn.tipo_inicial=i
	btn.tipo=i
	posX = posX+nX
	if (i==(max_btn_fila-1)) {
		fila++
		max_btn_fila=btn_fila_inicial*fila
		posX = 600
		posY=posY+nY
	}	
}