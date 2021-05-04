// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_soltar_cadaver(){
	//var cadaver = obj_personaje.pers_limpiar
	if (cadaver_guardado!=noone and instance_exists(cadaver_guardado) and cadaver_guardado.visible==false) {
		cadaver_guardado.visible = true
								
		//var cargando_cadaver = personaje.cargando_cadaver
		if (bolsa_cadaver!=noone and instance_exists(bolsa_cadaver) and bolsa_cadaver.visible==true) {
				// Posiciona el cadaver
				cadaver_guardado.x = bolsa_cadaver.x
				cadaver_guardado.y = bolsa_cadaver.y
				//Oculta la bolsa del cadaver
				bolsa_cadaver.visible = false
		}
								
		cadaver_guardado = noone
	}
}