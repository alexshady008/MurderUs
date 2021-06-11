/// @description Variables
// Puede escribir su código en este editor

global.jugabilidad = false
global.menuBloq = true
color = c_white
color2 = c_dkgray
guardado = false


#region Contr los datos del tiempo
if (global.regaloSkins){
	scr_contr_ruleta_tiempo(0)
}	
#endregion


#region Crea botones
eliminarCampo = instance_create_depth(x+440,y-221,-15,obj_btn_eliminar_popup)
calificar = instance_create_depth(x,y+253,-15,obj_btn_calificar_oferta)
#endregion


