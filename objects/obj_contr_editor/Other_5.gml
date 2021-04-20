/// @description Contr el tutorial
// Puede escribir su código en este editor
if (global.tutorial_editor!=ultimo_paso_tutorial){
	global.tutorial_editor=0
	ini_open("comandos.ini")
	ini_write_real("editor","tutorial_editor",global.tutorial_editor)
	ini_close()
}