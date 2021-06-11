/// @description Comienza a girar
// Puede escribir su código en este editor

if(estado == "Parada" && regalo == "?") 
{
	estado = "Acelerar";
	texto_girar = "Turning";
	
	audio_play_sound(snd_swosh, 1, false);
	
	ini_open("comandos.ini");
	randomize()
	probabilidad = irandom_range(1, 100);
	//probabilidad = 76
	
	#region Accesorios
	if (probabilidad >= 1 && probabilidad <= 20) 
	{
		angulo_final = 90;
		regalo = "Accesorio";
		randomize()
		numero_regalo = irandom_range(1, global.max_accesorios);
		var prueba = 0
		while(global.accesorio_bloqueado[numero_regalo]==false){
			numero_regalo = irandom_range(1, global.max_accesorios);
			prueba++
			if (prueba>=10) break
		}
		global.accesorio_bloqueado[numero_regalo] = false;
		ini_write_real("jugadorDatos", "accesorio_bloqueado" + string(numero_regalo), false);
		
	} 
	#endregion
	
	#region Prenda
	if (probabilidad >= 21 && probabilidad <= 35) 
	{
		angulo_final = 135;
		regalo = "Prenda";
		randomize()
		numero_regalo = irandom_range(1, global.max_prendas);
		var prueba = 0
		while(global.prenda_bloqueada[numero_regalo]==false){
			numero_regalo = irandom_range(1, global.max_prendas);
			prueba++
			if (prueba>=10) break
		}
		global.prenda_bloqueada[numero_regalo] = false;
		ini_write_real("jugadorDatos", "prenda_bloqueada" + string(numero_regalo), false);
	} 
	#endregion
	
	#region SOmbrero
	if (probabilidad >= 36 && probabilidad <= 50) 
	{
		angulo_final = 225;
		regalo = "Sombrero";
		randomize()
		numero_regalo = irandom_range(1, global.max_sombreros);
		var prueba = 0
		while(global.sombrero_bloqueado[numero_regalo]==false){
			numero_regalo = irandom_range(1, global.max_sombreros);
			prueba++
			if (prueba>=10) break
		}
		global.sombrero_bloqueado[numero_regalo] = false;
		ini_write_real("jugadorDatos", "sombrero_bloqueado" + string(numero_regalo), false);
	} 
	#endregion
	
	#region 10 Diamantes
	if (probabilidad >= 51 && probabilidad <= 65) 
	{
		angulo_final = 45;
		regalo = "10 Diamantes";
		global.monedas += 10;
		ini_write_real("jugadorDatos", "monedas", global.monedas);
	} 
	#endregion
	
	#region 50 Diamantes
	if (probabilidad >= 66 && probabilidad <= 75) 
	{
		angulo_final = 180;
		regalo = "50 Diamantes";
		global.monedas += 50;
		ini_write_real("jugadorDatos", "monedas", global.monedas);
	} 
	#endregion
	
	#region Mascotas
	if (probabilidad >= 76 && probabilidad <= 85) 
	{
		angulo_final = 0;
		regalo = "Mascota";
		randomize()
		numero_regalo = irandom_range(1, global.max_mascotas);
		var prueba = 0
		while(global.mascota_bloqueada[numero_regalo]==false){
			numero_regalo = irandom_range(1, global.max_mascotas);
			prueba++
			if (prueba>=10) break
		}
		global.mascota_bloqueada[numero_regalo] = false;
		ini_write_real("jugadorDatos", "mascota_bloqueada" + string(numero_regalo), false);
	}
	#endregion
	
	#region Skin
	if (probabilidad >= 86 && probabilidad <= 95) 
	{
		angulo_final = 315;
		regalo = "Skin";
		randomize()
		numero_regalo = irandom_range(1, global.max_skins-1);
		var prueba = 0
		while(global.skin_bloqueado[numero_regalo]==false){
			numero_regalo = irandom_range(1, global.max_skins);
			prueba++
			if (prueba>=10) break
		}
		global.skin_bloqueado[numero_regalo] = false;
		ini_write_real("jugadorDatos", "skin_bloqueado" + string(numero_regalo), false);
	} 
	#endregion
	
	#region 100 Diamantes
	if (probabilidad >= 96 && probabilidad <= 100) 
	{
		angulo_final = 270;
		regalo = "100 Diamantes";
		global.monedas += 100;
		ini_write_real("jugadorDatos", "monedas", global.monedas);
	}
	#endregion
	
	ini_close();
} 