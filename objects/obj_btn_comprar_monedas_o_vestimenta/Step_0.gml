/// @description Controla el precio
// Puede escribir su código en este editor

#region Contr el precio
switch(global.elegir_tipo_vestimenta){
	case 0: 
		if (global.skin_bloqueado[global.skinElegido-1]) bloqueado=true
		else bloqueado=false
		precio = global.precio_skins  
	break
	case 1: 
		if (global.prenda_bloqueada[global.prendaElegida]) bloqueado=true
		else bloqueado=false
		precio = global.precio_prendas  
	break
	case 2: 
		if (global.accesorio_bloqueado[global.accesorioElegido]) bloqueado=true
		else bloqueado=false
		precio = global.precio_accesorios  
	break
	case 3: 
		if (global.sombrero_bloqueado[global.sombreroElegido]) bloqueado=true
		else bloqueado=false
		precio = global.precio_sombreros  
	break
	case 4: 
		if (global.mascota_bloqueada[global.mascotaElegida]) bloqueado=true
		else bloqueado=false
		precio = global.precio_mascotas  
	break
}
#endregion


#region Contr la escala
	if !(presionado) {
		contr_escala=true
		if (aumentar_escala==true){
			if (escala<1.15) escala+=0.002
			else aumentar_escala=false
		}
		else {
			if (escala>1) escala-=0.002
			else aumentar_escala=true
		}
	}
	/*else {
		if (contr_escala){
			contr_escala=false
			escala = 1
		}
	}*/
#endregion


#region Contr la escala
	/*if (precio<=global.monedas and bloqueado==true) {
		contr_escala=true
		if (aumentar_escala==true){
			if (escala<1.15) escala+=0.002
			else aumentar_escala=false
		}
		else {
			if (escala>1) escala-=0.002
			else aumentar_escala=true
		}
	}
	else if (precio>global.monedas or bloqueado==false){
		if (contr_escala){
			contr_escala=false
			escala = 1
		}
	}*/
#endregion


