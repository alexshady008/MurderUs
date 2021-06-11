/// @description Variables
// Puede escribir su código en este editor

global.jugabilidad = false
global.menuBloq = true
guardado = false
color = c_white

#region Crea botones
eliminarCampo = instance_create_depth(x+440,y-221,-15,obj_btn_eliminar_popup)
/*
servidorUsa = instance_create_depth(x-110,y-40,-15,obj_btn_elegir_servidor_usa)
servidorEuropa= instance_create_depth(x+110,y-40,-15,obj_btn_elegir_servidor_europa)
servidorBrasil = instance_create_depth(x-330,y-40,-15,obj_btn_elegir_servidor_brasil)
servidorBrasil2 = instance_create_depth(x+330,y-40,-15,obj_btn_elegir_servidor_2_brasil)
*/
//servidorUsa = instance_create_depth(x-250,y+140,-15,obj_btn_elegir_servidor_usa)
servidorEuropa= instance_create_depth(x,y+140,-15,obj_btn_elegir_servidor_europa)  //x+250
servidorBrasil = instance_create_depth(x,y,-15,obj_btn_elegir_servidor_brasil)
//servidorBrasil = instance_create_depth(x-250,y,-15,obj_btn_elegir_servidor_brasil)
//servidorBrasil2 = instance_create_depth(x+250,y,-15,obj_btn_elegir_servidor_2_brasil)

//elegirSombras = instance_create_depth(x+250,y+140,-15,obj_btn_elegir_sombras)
//noElegirSombras = instance_create_depth(x-250,y+140,-15,obj_btn_no_elegir_sombras)
#endregion