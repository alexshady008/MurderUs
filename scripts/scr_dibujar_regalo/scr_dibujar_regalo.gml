// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibujar_regalo(_tipo_regalo, _pos_x, _pos_y, _numero_premio){
	
	var _sprite_regalo;
	
	switch (_tipo_regalo) {
	    case "Accesorio":
			switch (_numero_premio) 
			{
			    case 1: _sprite_regalo = spr_mascara01; break;
				case 2: _sprite_regalo = spr_mascara02; break;
				case 3: _sprite_regalo = spr_mascara03; break;
				case 4: _sprite_regalo = spr_mascara04; break;
				case 5: _sprite_regalo = spr_mascara05; break;
				case 6: _sprite_regalo = spr_mascara06; break;
				case 7: _sprite_regalo = spr_mascara07; break;
				case 8: _sprite_regalo = spr_mascara08; break;
				case 9: _sprite_regalo = spr_mascara09; break;
				case 10: _sprite_regalo = spr_mascara10; break;
				case 11: _sprite_regalo = spr_mascara11; break;
				case 12: _sprite_regalo = spr_mascara12; break;
				case 13: _sprite_regalo = spr_mascara13; break;
				case 14: _sprite_regalo = spr_mascara14; break;
				case 15: _sprite_regalo = spr_mascara15; break;
				case 16: _sprite_regalo = spr_mascara16; break;
				case 17: _sprite_regalo = spr_mascara17; break;
				case 18: _sprite_regalo = spr_mascara18; break;
				case 19: _sprite_regalo = spr_mascara19; break;
				case 20: _sprite_regalo = spr_mascara20; break;
				case 21: _sprite_regalo = spr_mascara21; break;
				case 22: _sprite_regalo = spr_mascara22; break;
				case 23: _sprite_regalo = spr_mascara23; break;
				case 24: _sprite_regalo = spr_mascara24; break;
				case 25: _sprite_regalo = spr_mascara25; break;
				case 26: _sprite_regalo = spr_mascara26; break;
				case 27: _sprite_regalo = spr_mascara27; break;
				case 28: _sprite_regalo = spr_mascara28; break;
				case 29: _sprite_regalo = spr_mascara29; break;
				case 30: _sprite_regalo = spr_mascara30; break;
				case 31: _sprite_regalo = spr_mascara31; break;
				case 32: _sprite_regalo = spr_mascara32; break;
				case 33: _sprite_regalo = spr_mascara33; break;
				case 34: _sprite_regalo = spr_mascara34; break;
				case 35: _sprite_regalo = spr_mascara35; break;
				case 36: _sprite_regalo = spr_mascara36; break;
				case 37: _sprite_regalo = spr_mascara37; break;
				case 38: _sprite_regalo = spr_mascara38; break;
				case 39: _sprite_regalo = spr_mascara39; break;
				case 40: _sprite_regalo = spr_mascara40; break;
				case 41: _sprite_regalo = spr_mascara41; break;
				case 42: _sprite_regalo = spr_mascara42; break;
				case 43: _sprite_regalo = spr_mascara43; break;
				case 44: _sprite_regalo = spr_mascara44; break;
				case 45: _sprite_regalo = spr_mascara45; break;
				case 46: _sprite_regalo = spr_mascara46; break;
				case 47: _sprite_regalo = spr_mascara47; break;
				case 48: _sprite_regalo = spr_mascara48; break;
			}
	        break;
		case "Prenda":
	        switch (_numero_premio) 
			{
			    case 1: _sprite_regalo = spr_skin1_parado; break;
				case 2: _sprite_regalo = spr_skin2_parado; break;
				case 3: _sprite_regalo = spr_skin3_parado; break;
				case 4: _sprite_regalo = spr_skin4_parado; break;
				case 5: _sprite_regalo = spr_skin5_parado; break;
				case 6: _sprite_regalo = spr_skin6_parado; break;
				case 7: _sprite_regalo = spr_skin7_parado; break;
				case 8: _sprite_regalo = spr_skin8_parado; break;
				case 9: _sprite_regalo = spr_skin9_parado; break;
				case 10: _sprite_regalo = spr_skin10_parado; break;
				case 11: _sprite_regalo = spr_skin11_parado; break;
				case 12: _sprite_regalo = spr_skin12_parado; break;
				case 13: _sprite_regalo = spr_skin13_parado; break;
				case 14: _sprite_regalo = spr_skin14_parado; break;
				case 15: _sprite_regalo = spr_skin15_parado; break;
				case 16: _sprite_regalo = spr_skin16_parado; break;
			}
			break;
		case "Sombrero":
	        switch (_numero_premio) 
			{
			    case 1: _sprite_regalo = spr_gorro01; break;
				case 2: _sprite_regalo = spr_gorro02; break;
				case 3: _sprite_regalo = spr_gorro03; break;
				case 4: _sprite_regalo = spr_gorro04; break;
				case 5: _sprite_regalo = spr_gorro05; break;
				case 6: _sprite_regalo = spr_gorro06; break;
				case 7: _sprite_regalo = spr_gorro07; break;
				case 8: _sprite_regalo = spr_gorro08; break;
				case 9: _sprite_regalo = spr_gorro09; break;
				case 10: _sprite_regalo = spr_gorro10; break;
				case 11: _sprite_regalo = spr_gorro11; break;
				case 12: _sprite_regalo = spr_gorro12; break;
				case 13: _sprite_regalo = spr_gorro13; break;
				case 14: _sprite_regalo = spr_gorro14; break;
				case 15: _sprite_regalo = spr_gorro15; break;
				case 16: _sprite_regalo = spr_gorro16; break;
				case 17: _sprite_regalo = spr_gorro17; break;
				case 18: _sprite_regalo = spr_gorro18; break;
				case 19: _sprite_regalo = spr_gorro19; break;
				case 20: _sprite_regalo = spr_gorro20; break;
				case 21: _sprite_regalo = spr_gorro21; break;
				case 22: _sprite_regalo = spr_gorro22; break;
				case 23: _sprite_regalo = spr_gorro23; break;
				case 24: _sprite_regalo = spr_gorro24; break;
				case 25: _sprite_regalo = spr_gorro25; break;
				case 26: _sprite_regalo = spr_gorro26; break;
				case 27: _sprite_regalo = spr_gorro27; break;
				case 28: _sprite_regalo = spr_gorro28; break;
				case 29: _sprite_regalo = spr_gorro29; break;
				case 30: _sprite_regalo = spr_gorro30; break;
				case 31: _sprite_regalo = spr_gorro31; break;
				case 32: _sprite_regalo = spr_gorro32; break;
				case 33: _sprite_regalo = spr_gorro33; break;
				case 34: _sprite_regalo = spr_gorro34; break;
			}
	        break;
		case "10 Diamantes":
	        _sprite_regalo = spr_10_diamantes;
	        break;
		case "50 Diamantes":
	        _sprite_regalo = spr_50_diamantes;
	        break;
		case "Mascota":
	        switch (_numero_premio) 
			{
			    case 1: _sprite_regalo = spr_mascota01; break;
				case 2: _sprite_regalo = spr_mascota02; break;
				case 3: _sprite_regalo = spr_mascota03; break;
				case 4: _sprite_regalo = spr_mascota04_parada; break;
				case 5: _sprite_regalo = spr_mascota05_corriendo; break;
				case 6: _sprite_regalo = spr_mascota06_corriendo; break;
				case 7: _sprite_regalo = spr_mascota07_corriendo; break;
				case 8: _sprite_regalo = spr_mascota08_corriendo; break;
				case 9: _sprite_regalo = spr_mascota09_corriendo; break;
				case 10: _sprite_regalo = spr_mascota10_corriendo; break;
				case 11: _sprite_regalo = spr_mascota11_corriendo; break;
				case 12: _sprite_regalo = spr_mascota12_corriendo; break;
				case 13: _sprite_regalo = spr_mascota13_corriendo; break;
				case 14: _sprite_regalo = spr_mascota14_corriendo; break;
				case 15: _sprite_regalo = spr_mascota15_corriendo; break;
				case 16: _sprite_regalo = spr_mascota16_corriendo; break;
				case 17: _sprite_regalo = spr_mascota17_corriendo; break;
				case 18: _sprite_regalo = spr_mascota18_corriendo; break;
				case 19: _sprite_regalo = spr_mascota19_corriendo; break;
				case 20: _sprite_regalo = spr_mascota20_corriendo; break;
				case 21: _sprite_regalo = spr_mascota21_corriendo; break;
				case 22: _sprite_regalo = spr_mascota22_corriendo; break;
				case 23: _sprite_regalo = spr_mascota23_corriendo; break;
				case 24: _sprite_regalo = spr_mascota24_corriendo; break;
				case 25: _sprite_regalo = spr_mascota25_corriendo; break;
				case 26: _sprite_regalo = spr_mascota26_corriendo; break;
				case 27: _sprite_regalo = spr_mascota27_corriendo; break;
				case 28: _sprite_regalo = spr_mascota28_corriendo; break;
				case 29: _sprite_regalo = spr_mascota29_corriendo; break;
				case 30: _sprite_regalo = spr_mascota30_corriendo; break;
				case 31: _sprite_regalo = spr_mascota31_corriendo; break;
				case 32: _sprite_regalo = spr_mascota32_corriendo; break;
				case 33: _sprite_regalo = spr_mascota33_corriendo; break;
			}
	        break;
		case "Skin":
	        switch (_numero_premio) 
			{
				case 1: _sprite_regalo = spr_pers1_parado; break;
				case 2: _sprite_regalo = spr_pers2_parado; break;
				case 3: _sprite_regalo = spr_pers3_parado; break;
				case 4: _sprite_regalo = spr_pers4_parado; break;
				case 5: _sprite_regalo = spr_pers5_parado; break;
				case 6: _sprite_regalo = spr_pers6_parado; break;
				case 7: _sprite_regalo = spr_pers7_parado; break;
				case 8: _sprite_regalo = spr_pers8_parado; break;
				case 9: _sprite_regalo = spr_pers9_parado; break;
				case 10: _sprite_regalo = spr_pers10_parado; break;
				case 11: _sprite_regalo = spr_pers11_parado; break;
				case 12: _sprite_regalo = spr_pers12_parado; break;
				case 13: _sprite_regalo = spr_pers13_parado; break;
				case 14: _sprite_regalo = spr_pers14_parado; break;
				case 15: _sprite_regalo = spr_pers15_parado; break;
				case 16: _sprite_regalo = spr_pers16_parado; break;
				case 17: _sprite_regalo = spr_pers17_parado; break;
				case 18: _sprite_regalo = spr_pers18_parado; break;
				case 19: _sprite_regalo = spr_pers19_parado; break;
				case 20: _sprite_regalo = spr_pers20_parado; break;
				case 21: _sprite_regalo = spr_pers21_parado; break;
				case 22: _sprite_regalo = spr_pers22_parado; break;
				case 23: _sprite_regalo = spr_pers23_parado; break;
				case 24: _sprite_regalo = spr_pers24_parado; break;
				case 25: _sprite_regalo = spr_pers25_parado; break;
				case 26: _sprite_regalo = spr_pers26_parado; break;
				case 27: _sprite_regalo = spr_pers27_parado; break;
				case 28: _sprite_regalo = spr_pers28_parado; break;
				case 29: _sprite_regalo = spr_pers29_parado; break;
				case 30: _sprite_regalo = spr_pers30_parado; break;
				case 31: _sprite_regalo = spr_pers31_parado; break;
				case 32: _sprite_regalo = spr_pers32_parado; break;
				case 33: _sprite_regalo = spr_pers33_parado; break;
				case 34: _sprite_regalo = spr_pers34_parado; break;
				case 35: _sprite_regalo = spr_pers35_parado; break;
				case 36: _sprite_regalo = spr_pers36_parado; break;
			}
	        break;
		case "100 Diamantes":
	        _sprite_regalo = spr_100_diamantes;
	        break;
		default:
			_sprite_regalo = spr_10_diamantes;
			break;
	}
	
	return draw_sprite_ext(_sprite_regalo, 0, _pos_x, _pos_y, escala, escala, 0, c_white, 1);
}