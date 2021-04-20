/// @description Variables
// Puede escribir su código en este editor

if (global.jugabilidad) jugando = true
else jugando = false
global.jugabilidad = false
global.menuBloq = true

btn_aceptar = noone
objAccionar = noone
titulo = ""
valor = ""
color = c_white
c_titulo = c_black
c_valor = c_dkgray
escala = 1
alfa = 0.65
string_tipo = 0
if !(global.chat) maxLetras = 20  //12
else maxLetras = 80  //50
string1 = ""
string2 = ""
mostrarBarraEscritura = true
alarm[0] = 10



// Se muestra el teclado
if (keyboard_virtual_status() == false){
//if (obj_contr_asincrono.estadoTeclado=="oculto"){
keyboard_virtual_show(kbv_type_default, kbv_returnkey_default, kbv_autocapitalize_none, false)
}
