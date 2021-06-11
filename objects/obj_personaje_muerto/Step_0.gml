/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (global.estadoJuego == "jugando"){
	if (particula){
		var particula_sangre = instance_create_depth(x,y-15,depth+1,obj_particulas_sangre)
		randomize()
		particula_sangre.yFinal = y+irandom_range(30,60)
	}
}
else { instance_destroy() }