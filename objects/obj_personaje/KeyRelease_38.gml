/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

//global.jugabilidad = false
/*physics_remove_fixture(id, fixture)
var fix = physics_fixture_create()
physics_fixture_set_polygon_shape (fix); 
physics_fixture_add_point (fix, -21,0); 
physics_fixture_add_point (fix, 21, 0); 
physics_fixture_add_point (fix, 21, 25);
physics_fixture_add_point (fix, -21, 25);
physics_fixture_set_density (fix, 1)
physics_fixture_set_restitution(fix, 0)
physics_fixture_set_collision_group(fix, 0)
physics_fixture_set_linear_damping(fix, 2.5)  //2.5
physics_fixture_set_angular_damping(fix, 1)   //0.2
physics_fixture_set_friction(fix, 0.1)  //0.1
fixture = physics_fixture_bind(fix, id)
physics_fixture_delete(fix)