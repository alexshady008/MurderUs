/// @description Cierra la puerta
// Puede escribir su código en este editor

if (abierta){
	if (index>0) {
		if (index==ultimo_index) scr_activar_sonido(snd_puerta_corrediza,false)
		index--
		visible=true
		var tiempo_alarma = tiempo/global.step_delta
		if (tiempo_alarma>=1) alarm[1] = tiempo_alarma
		else alarm[1] = 1
	}	
	else {
		abierta=false
		var tiempo_alarma = tiempo2/global.step_delta
		if (tiempo_alarma>=1) alarm[0] = tiempo_alarma
		else alarm[0] = 1
		
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
			physics_fixture_set_collision_group(fix, 1)
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