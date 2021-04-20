/// @description Elimina todos los bloques
// Puede escribir su código en este editor

if !(global.editor)
{
	for (i=0 ; i<cant_max_bloques; i++){
		if (bloque[i]!=noone and instance_exists(bloque[i])){
			instance_destroy(bloque[i])
			bloque[i] = noone
		}
	}
}


if (spr_mask != noone) sprite_delete(spr_mask)

