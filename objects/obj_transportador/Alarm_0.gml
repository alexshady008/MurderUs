/// @description Se enciende
// Puede escribir su código en este editor
if (encendido){
	if sprite==1{
		//show_debug_message("111")
		sprite_index = spr_transportador_encendido
		sprite = 2
		if (global.step_delta>1) alarm[0] = round(tiempo/global.step_delta)+1
		else alarm[0] = tiempo
	}
	else {
		//show_debug_message("222")
		if index!=4{
			index++
			if (global.step_delta>1) alarm[0] = round(tiempo/global.step_delta)+1
			else alarm[0] = tiempo
		}
		else {
			iluminar = true
			luz = instance_create_depth(x,y,-5000,obj_transportador_luz)
			luz.transportador = id
			if (personaje!=noone and instance_exists(personaje)) luz.personaje = personaje
			if (global.step_delta>1) luz.alarm[0] = round(tiempo/global.step_delta)+1
			else luz.alarm[0] = tiempo
		}
	}
}