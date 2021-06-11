function scr_config_fisica_pers_muerto() {
	// Propiedades de fisica
	if (jugador){
		physics_remove_fixture(id, fixture)
		var fix = physics_fixture_create()
		physics_fixture_set_polygon_shape (fix); 
		physics_fixture_add_point (fix, -14,10); 
		physics_fixture_add_point (fix, 14, 10); 
		physics_fixture_add_point (fix, 14, 32);
		physics_fixture_add_point (fix, -14, 32);
		physics_fixture_set_density (fix, 1)
		physics_fixture_set_restitution(fix, 0)
		physics_fixture_set_collision_group(fix, 0)
		physics_fixture_set_linear_damping(fix, 2.5)  //2.5
		physics_fixture_set_angular_damping(fix, 1)   //0.2
		physics_fixture_set_friction(fix, 0.1)  //0.1
		fixture = physics_fixture_bind(fix, id)
		physics_fixture_delete(fix)
	}	



}
