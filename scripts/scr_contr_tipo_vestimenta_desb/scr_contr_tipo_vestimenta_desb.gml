// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_contr_tipo_vestimenta_desb(){
	var tipoReturn = "NOONE"
	switch(global.elegir_tipo_vestimenta)
		{
		//Skins
		case 0:
			switch(os_get_language()) {
				case "es": tipoReturn="PIEL" break;
				case "pt": tipoReturn="PELE" break;
				case "it": tipoReturn="PELLE" break;
				case "ru": tipoReturn="КОЖА" break;
				default: tipoReturn="SKIN" break;
			}
		break;
		//Prendas
		case 1:
			switch(os_get_language()) {
				case "es": tipoReturn="PRENDA" break;
				case "pt": tipoReturn="ROUPA" break;
				case "it": tipoReturn="INDUMENTO" break;
				case "ru": tipoReturn="ОДЕЖДА" break;
				default: tipoReturn="CLOTHING" break;
			}
		break;
		//Accesorios
		case 2:
			switch(os_get_language()) {
				case "es": tipoReturn="ACCESORIO" break;
				case "pt": tipoReturn="ACESSÓRIO" break;
				case "it": tipoReturn="ACCESSORIO" break;
				case "ru": tipoReturn="АКСЕССУАРЫ" break;
				default: tipoReturn="ACCESSORY" break;
			}
		break;
		//Sombreros
		case 3:
			switch(os_get_language()) {
				case "es": tipoReturn="SOMBRERO" break;
				case "pt": tipoReturn="CHAPÉU" break;
				case "it": tipoReturn="CAPPELLO" break;
				case "ru": tipoReturn="ШАПКА" break;
				default: tipoReturn="HAT" break;
			}
		break;
		//Mascotas
		case 4:
			switch(os_get_language()) {
				case "es": tipoReturn="MASCOTA" break;
				case "pt": tipoReturn="ANIMAL" break;
				case "it": tipoReturn="ANIMALE" break;
				case "ru": tipoReturn="ПЭТ" break;
				default: tipoReturn="PET" break;
			}
		break;
	}
	
	return tipoReturn
}