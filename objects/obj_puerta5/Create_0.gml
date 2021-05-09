/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (global.modo_jugabilidad>1) instance_destroy()

depth = -y
categoria = "P"
tipoObjeto = 5

if (place_meeting( x, y, obj_puerta5))
{ instance_destroy()}

abierta = false
tiempo = 5
tiempo2 = 100
index = 0
ultimo_index = 3
image_index=0

if !(global.editor)
{
	var tiempo_alarma = tiempo/global.step_delta
	if (tiempo_alarma>=1) alarm[0] = tiempo_alarma
	else alarm[0] = 1
	
	#region Cambia las Propiedades de fisica
			var fix = physics_fixture_create()
			//physics_fixture_set_box_shape (fix, 192, 128)
			physics_fixture_set_polygon_shape (fix); 
			physics_fixture_add_point (fix, 0,0); 
			physics_fixture_add_point (fix, 192, 0); 
			physics_fixture_add_point (fix, 192, 128);  //128
			physics_fixture_add_point (fix, 0, 128);  //128*/
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
else {
	scr_contr_obj_creado(obj_puerta5, 5, noone)  
}



