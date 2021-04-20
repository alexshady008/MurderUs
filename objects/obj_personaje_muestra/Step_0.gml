/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
skin = global.skinElegido

if (atacando==true and global.elegir_tipo_vestimenta!=0){
	atacando = false
	scr_sprite_parado_personajes()
	image_speed = vel_anim_parado
}