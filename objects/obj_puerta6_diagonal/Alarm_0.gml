/// @description Abre la puerta
// Puede escribir su código en este editor

if !(global.editor) 
{
	if !(abierta){
		if (index<ultimo_index) {
			if (index==0) scr_activar_sonido(snd_puerta_corrediza,false)
			index++
			var tiempo_alarma = tiempo/global.step_delta
			if (tiempo_alarma>=1) alarm[0] = tiempo_alarma
			else alarm[0] = 1
			//if (global.step_delta>=1) alarm[0] = tiempo/global.step_delta
			//else alarm[0] = tiempo
		}	
		else {
			abierta=true
			visible=false
			var tiempo_alarma = tiempo2/global.step_delta
			if (tiempo_alarma>=1) alarm[1] = tiempo_alarma
			else alarm[1] = 1
			//if (global.step_delta>=1) alarm[1] = tiempo2/global.step_delta
			//else alarm[1] = tiempo2
			#region Cambia las Propiedades de fisica
				physics_remove_fixture(id, fixture)
				var fix = physics_fixture_create()
				//physics_fixture_set_box_shape (fix, 192, 128)
				physics_fixture_set_polygon_shape (fix); 
				physics_fixture_add_point (fix, 2,128); 
				physics_fixture_add_point (fix, 126, 6); 
				physics_fixture_add_point (fix, 125, 130);  //128
				physics_fixture_add_point (fix, 3, 252);  //128*/
				physics_fixture_set_density (fix, 0)
				physics_fixture_set_collision_group(fix, 0)
				/*
				physics_fixture_set_restitution(fix, 0)
				physics_fixture_set_linear_damping(fix, 2.5)  //2.5
				physics_fixture_set_angular_damping(fix, 1)   //0.2
				physics_fixture_set_friction(fix, 0.1)  //0.1
				*/
				fixture = physics_fixture_bind(fix, id)
				physics_fixture_delete(fix)
			#endregion
		}	
	}
}