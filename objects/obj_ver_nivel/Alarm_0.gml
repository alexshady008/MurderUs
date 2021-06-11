/// @description Obtiene el nombre
// Puede escribir su código en este editor
for( i=0; i<global.max_niveles_guardar ; i++ ){
	if (nivel == i){
		ini_open("comandos.ini")
			 nivel_nombre = ini_read_string("editor","nivel_editor"+string(i),false)
		 ini_close()
	}
}