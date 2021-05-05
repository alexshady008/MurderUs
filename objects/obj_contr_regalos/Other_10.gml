/// @description Elegir la recompensa segun el regalo
var frecuencias = new RandomFrecuencias();

ini_open("comandos.ini")

switch (regalo_escogido) {
	#region Accesorios
	case RegalosRueda.Accesorio:
		for(var i = 1; i <= global.max_accesorios; i++) {
			//Agrega los accesorios bloqueados al random
			if (global.accesorio_bloqueado[i]) {
				frecuencias.AgregarFrecuencia(i, 1);
			}
		}
		//Si no tiene accesorios bloqueados, toma el primer accesorio. En caso contrario, toma uno al azar.
		var accesorio_escogido = frecuencias.Contar() == 0 ? 1 : frecuencias.ValorRandom();
		global.accesorio_bloqueado[accesorio_escogido] = false;
		ini_write_real("jugadorDatos", "accesorio_bloqueado" + string(accesorio_escogido), false);
		sprite_escogido = scr_sprite_accesorio(accesorio_escogido);
	break
	#endregion
	#region Prendas
	case RegalosRueda.Prenda:
		for(var i = 1; i <= global.max_prendas; i++) {
			//Agrega las prendas bloqueadas al random
			if (global.prenda_bloqueada[i]) {
				frecuencias.AgregarFrecuencia(i, 1);
			}
		}
		//Si no tiene prendas bloqueadas, toma la primera prenda. En caso contrario, toma una al azar.
		var prenda_escogida = frecuencias.Contar() == 0 ? 1 : frecuencias.ValorRandom();
		global.prenda_bloqueada[prenda_escogida] = false;
		ini_write_real("jugadorDatos", "prenda_bloqueada" + string(prenda_escogida), false);
		sprite_escogido = scr_sprite_prenda(prenda_escogida);
	break;
	#endregion
	#region Sombreros
	case RegalosRueda.Sombrero:
		for(var i = 1; i <= global.max_sombreros; i++) {
			//Agrega los sombreros bloqueados al random
			if (global.sombrero_bloqueado[i]) {
				frecuencias.AgregarFrecuencia(i, 1);
			}
		}
		//Si no tiene sombreros bloqueados, toma el primer sombrero. En caso contrario, toma uno al azar.
		var sombrero_escogido = frecuencias.Contar() == 0 ? 1 : frecuencias.ValorRandom();
		global.sombrero_bloqueado[sombrero_escogido] = false;
		ini_write_real("jugadorDatos", "sombrero_bloqueado" + string(sombrero_escogido), false);
		sprite_escogido = scr_sprite_sombrero(sombrero_escogido);
	break;
	#endregion
	#region Mascotas
	case RegalosRueda.Mascota:
		for(var i = 1; i <= global.max_mascotas; i++) {
			//Agrega las mascotas bloqueadas al random
			if (global.mascota_bloqueada[i]) {
				frecuencias.AgregarFrecuencia(i, 1);
			}
		}
		//Si no tiene mascotas bloqueadas, toma la primera mascota. En caso contrario, toma una al azar.
		var mascota_escogida = frecuencias.Contar() == 0 ? 1 : frecuencias.ValorRandom();
		global.mascota_bloqueada[mascota_escogida] = false;
		ini_write_real("jugadorDatos", "mascota_bloqueada" + string(mascota_escogida), false);
		sprite_escogido = scr_sprite_mascota(mascota_escogida);
	break;
	#endregion
	#region Skins
	case RegalosRueda.Skin:
		for(var i = 1; i < global.max_skins; i++) {
			//Agrega los skins bloqueados al random
			if (global.skin_bloqueado[i]) {
				frecuencias.AgregarFrecuencia(i, 1);
			}
		}
		//Si no tiene skins bloqueados, toma el skin sombrero. En caso contrario, toma uno al azar.
		var skin_escogido = frecuencias.Contar() == 0 ? 1 : frecuencias.ValorRandom();
		global.skin_bloqueado[skin_escogido] = false;
		ini_write_real("jugadorDatos", "skin_bloqueado" + string(skin_escogido), false);
		sprite_escogido = scr_sprite_skin(skin_escogido);
	break;
	#endregion
	#region Diamantes
	case RegalosRueda.DiamantesDiez:
		global.monedas += 10;
		ini_write_real("jugadorDatos", "monedas", global.monedas);
		sprite_escogido = spr_regalo_10_diamantes;
	break;
	case RegalosRueda.DiamantesCincuenta:
		global.monedas += 50;
		ini_write_real("jugadorDatos", "monedas", global.monedas);
		sprite_escogido = spr_regalo_50_diamantes;
	break;
	case RegalosRueda.Diamantes100:
		global.monedas += 100;
		ini_write_real("jugadorDatos", "monedas", global.monedas);
		sprite_escogido = spr_regalo_100_diamantes;
	break;
	#endregion
}

ini_close();

frecuencias.Destruir();