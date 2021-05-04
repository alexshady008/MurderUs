/// @description Habilita al jugador y dehabilita el hongo
// Puede escribir su código en este editor

inactivo = true

//Habilita al jugador
if (pers_escaneando!=noone and instance_exists(pers_escaneando)) pers_escaneando.escaneando = false


//Elimina los bloques de la entrada
for (i=2 ; i<cant_bloques; i++){
	if (bloque[i]!=noone and instance_exists(bloque[i])){
		instance_destroy(bloque[i])
		bloque[i] = noone
	}
}
	

// Activa la alarma para activar el escaneamiento
var tiempo = tiempo_reescanear/global.step_delta
if (tiempo>=1) alarm[1] = tiempo
else alarm[1] = 1