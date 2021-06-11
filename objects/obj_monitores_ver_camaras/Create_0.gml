/// @description Variables
// Puede escribir su código en este editor
depth = -y
rango_marcador = 150
marcado = false
cant_max_bloques = 6
tipo = "camaras"

categoria = "I"
tipoObjeto = 3
spr_mask = noone
if (global.editor) scr_contr_obj_creado(obj_monitores_ver_camaras, 2, false)


//Crea los bloques de colisiones de costado
bloque[0] = noone
bloque[1] = noone
bloque[2] = noone
bloque[3] = noone
bloque[4] = noone
bloque[5] = noone

if !(global.editor)
{
	for (i=0 ; i<(cant_max_bloques); i++){
		// COntr posX
		if (i<(cant_max_bloques/2)) var posX = x+64
		else var posX = x-128
		// COntr posY
		if (i==0 or i==3) var posY = y-64
		else if (i==1 or i==4) var posY = y
		else if (i==2 or i==5) var posY = y+64
	
		bloque[i] = instance_create_depth(posX, posY, depth, obj_techo_colision)
		bloque[i].visible = false
	}
}