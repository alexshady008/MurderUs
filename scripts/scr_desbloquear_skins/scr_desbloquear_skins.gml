// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_desbloquear_skins(item_totales, item){
	 for ( var j=0 ; j<item_totales ; j++ ){
		if (item[j]) {
			item[j] = false 
			ini_open("comandos.ini")
			ini_write_real("jugadorDatos","skin_bloqueado"+string(j),false)
			ini_close()
		}	
	}
}


//global.skinsTotales
//global.skin[]