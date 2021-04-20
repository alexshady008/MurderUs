function scr_compr_colision_objeto_organizacion() {

	var buscar_obj = instance_position(x,y,obj_objeto1_organizacion)
	if (buscar_obj==noone or buscar_obj==id)  buscar_obj = instance_position(x,y,obj_objeto2_organizacion)
	if (buscar_obj==noone or buscar_obj==id)  buscar_obj = instance_position(x,y,obj_objeto3_organizacion)
	if (buscar_obj==noone or buscar_obj==id)  buscar_obj = instance_position(x,y,obj_objeto4_organizacion)
	if (buscar_obj==noone or buscar_obj==id)  buscar_obj = instance_position(x,y,obj_objeto5_organizacion)
	if (buscar_obj==noone or buscar_obj==id)  buscar_obj = instance_position(x,y,obj_objeto6_organizacion)
	if (buscar_obj==noone or buscar_obj==id)  buscar_obj = noone

	return buscar_obj
}



