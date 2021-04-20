/// @description Contr su objeto oculto
// Puede escribir su código en este editor

	if (objeto!=noone and instance_exists(objeto)){
		objeto.depth-=2
		objeto.oculto = false
	}