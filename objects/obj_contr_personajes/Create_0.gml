/// @description Variables
// Puede escribir su código en este editor

global.jugabilidad = false
global.menuBloq = true
guardado = false
skinInicial = global.skinsElegido
color = c_white

#region Crea botones
btnPersonaje = instance_create_depth(x,y+70,-15,obj_btn_mostrar_personaje)
//btnPersonaje.muestra = true

btnCambiarPers_der = instance_create_depth(x-150,y+70,-15,obj_btn_cambiar_pers_izq)
btnCambiarPers_izq= instance_create_depth(x+150,y+70,-15,obj_btn_cambiar_pers_der)

eliminarCampo = instance_create_depth(x+440,y-221,-15,obj_btn_eliminar_popup)
aceptarCampo = instance_create_depth(x,y+253,-15,obj_btn_cambiar_personajes)
#endregion