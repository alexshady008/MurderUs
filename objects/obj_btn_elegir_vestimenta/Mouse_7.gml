/// @description Va a la pantalla previa a jugar
if !(global.popup){
	escala=1
	
	/// sonido
	if (global.musica) audio_play_sound(snd_boton,100,false) 

	//if (global.regaloSkins){
	switch(global.elegir_tipo_vestimenta)
	{
		//Skins
		case 0:
			if (tipo < global.max_skins){
				global.skinElegido=tipo+1
				global.prendaElegida=0
				global.accesorioElegido=0
				global.sombreroElegido=0
				if (instance_exists(obj_personaje_muestra)) obj_personaje_muestra.alarm[0]=1
			}
		break;
		//Prendas
		case 1:
			if (tipo <= global.max_prendas) global.prendaElegida=tipo
		break;
		//Accesorios
		case 2:
			if (tipo <= global.max_accesorios) global.accesorioElegido=tipo
		break;
		//Sombreros
		case 3:
			if (tipo <= global.max_sombreros) global.sombreroElegido=tipo
		break;
		//Mascotas
		case 4:
			//if (global.regaloSkins) global.mascotaElegida=tipo
			if (tipo <= global.max_mascotas) global.mascotaElegida=tipo
		break;
	}
}
