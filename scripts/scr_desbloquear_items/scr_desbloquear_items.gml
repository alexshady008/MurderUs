// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_desbloquear_items(items_totales, item, ini_seccion, ini_key){
	 for ( var j=0 ; j<=items_totales ; j++ ){
		if (item[j]) {
			item[j] = false 
			ini_open("comandos.ini")
			ini_write_real(ini_seccion,ini_key+string(j),false)
			ini_close()
		}	
	}
}


//global.skinsTotales
//global.skin[]