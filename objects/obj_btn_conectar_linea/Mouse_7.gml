/// @description Va a la pantalla previa a jugar
if ( global.jugabilidad == false and global.tarea_completada == false ){
	escala=1

	if (obj_contr_tarea4.presionar==true) {
		obj_contr_tarea4.presionar = false
		obj_contr_tarea4.color_linea = noone
		obj_contr_tarea4.btn_presionado = noone
	}
}
