/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (personaje!=noone and instance_exists(personaje)){
	if (retener_personaje){
	 personaje.x = x
	 personaje.y = y-75
	 personaje.visible = false
	 personaje.contr_movimiento = false
	}
	else {
		personaje.visible = true
		personaje.contr_movimiento = true
	}
}

else if (personaje!=noone and !instance_exists(personaje)){
	if (luz!=noone and !instance_exists(luz)){
		personaje = noone
		alarm[2] = 1
	}
}