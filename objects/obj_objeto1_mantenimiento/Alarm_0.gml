/// @description Contr su sprite inicial
// Puede escribir su código en este editor
randomize() 

if (tipo!=noone){
	visible = true
	switch(tipo){
		case 1: sprite_index=spr_arbusto_largo_mantenimiento image_index=0 break
		case 2: sprite_index=spr_sucio_mantenimiento image_index=irandom_range(0,1) break
		case 3: sprite_index=spr_maquinaria_desajustada_mantenimiento  image_index=irandom_range(0,1) break
	}
}

image_speed=0