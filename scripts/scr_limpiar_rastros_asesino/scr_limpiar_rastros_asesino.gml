// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_limpiar_rastros_asesino(huellas, sangre, sangre_pers, cabeza_cadaver, cadaver){
	#region Limpia las huellas
		if (huellas!=noone and instance_exists(huellas)) instance_destroy(huellas)
	#endregion
								
	#region Limpia las sangre
		if (sangre!=noone and instance_exists(sangre)) instance_destroy(sangre)
	#endregion
								
	#region Limpia las sangre del asesino
		if (sangre_pers!=noone and instance_exists(sangre_pers)){
			if (sangre_pers.mostrar_pistas) sangre_pers.mostrar_pistas = false
		}
	#endregion
								
	#region Limpia la cabeza del cadaver
		if (cabeza_cadaver!=noone and instance_exists(cabeza_cadaver)) instance_destroy(cabeza_cadaver)
	#endregion
								
	#region Recoge el cadaver
		if (cadaver!=noone and instance_exists(cadaver) and cadaver.visible==true){
			//var cargando_cadaver = personaje.cargando_cadaver
			if (bolsa_cadaver!=noone and
			instance_exists(bolsa_cadaver)) {
				bolsa_cadaver.cadaver = cadaver
				bolsa_cadaver.visible = true
			}
			cadaver.visible=false
			cadaver_guardado = cadaver
		}
	#endregion
}