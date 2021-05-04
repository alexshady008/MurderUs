/// @description Propiedades
// Puede escribir su código en este editor
depth = -y
escaner_finalizado = false
escaneando = false
luz_alfa = 0
pers_escaneando = noone
manchado = false
inactivo = false
bloqueo_entrada = false
tiempo_reescanear = 300
cant_bloques = 4
sonido_fondo = noone
activacion_sonido = false

categoria = "I"
tipoObjeto = 4
spr_mask = noone


//Crea los bloques de colisiones de costado
bloque[0] = noone
bloque[1] = noone
bloque[2] = noone
bloque[3] = noone

if !(global.editor)
{
	for (i=0 ; i<(cant_bloques/2); i++){
		// COntr posX
		if (i==0) var posX = x+50
		else var posX = x-75
		// COntr posY
		var posY = y+16
	
		bloque[i] = instance_create_depth(posX, posY, depth, obj_contr_colision)
		bloque[i].visible = false
	}
	
}
else if (global.editor) scr_contr_obj_creado(obj_hongo_escaner, 5, false)