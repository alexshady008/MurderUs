if(estado == "Parada" && regalo == "?") 
{
	estado = "Acelerar";
	texto_girar = "Turning";
	
	audio_play_sound(snd_swosh, 1, false);
	
	ini_open("comandos.ini");
	probabilidad = irandom_range(1, 100);
	if (probabilidad >= 1 && probabilidad <= 20) 
	{
		angulo_final = 90;
		regalo = "Accesorio";
		numero_regalo = irandom_range(1, global.max_accesorios);
		global.accesorio_bloqueado[numero_regalo] = false;
		ini_write_real("jugadorDatos", "accesorio_bloqueado" + string(numero_regalo), false);
		
	} 
	if (probabilidad >= 21 && probabilidad <= 35) 
	{
		angulo_final = 135;
		regalo = "Prenda";
		numero_regalo = irandom_range(1, global.max_prendas);
		global.prenda_bloqueada[numero_regalo] = false;
		ini_write_real("jugadorDatos", "prenda_bloqueada" + string(numero_regalo), false);
	} 
	if (probabilidad >= 36 && probabilidad <= 50) 
	{
		angulo_final = 225;
		regalo = "Sombrero";
		numero_regalo = irandom_range(1, global.max_sombreros);
		global.sombrero_bloqueado[numero_regalo] = false;
		ini_write_real("jugadorDatos", "sombrero_bloqueado" + string(numero_regalo), false);
	} 
	if (probabilidad >= 51 && probabilidad <= 65) 
	{
		angulo_final = 45;
		regalo = "10 Diamantes";
		global.monedas += 10;
		ini_write_real("jugadorDatos", "monedas", global.monedas);
	} 
	if (probabilidad >= 66 && probabilidad <= 75) 
	{
		angulo_final = 180;
		regalo = "50 Diamantes";
		global.monedas += 50;
		ini_write_real("jugadorDatos", "monedas", global.monedas);
	} 
	if (probabilidad >= 76 && probabilidad <= 85) 
	{
		angulo_final = 0;
		regalo = "Mascota";
		numero_regalo = irandom_range(1, global.max_mascotas);
		global.mascota_bloqueada[numero_regalo] = false;
		ini_write_real("jugadorDatos", "mascota_bloqueada" + string(numero_regalo), false);
	} 
	if (probabilidad >= 86 && probabilidad <= 95) 
	{
		angulo_final = 315;
		regalo = "Skin";
		numero_regalo = irandom_range(1, global.max_skins);
		global.skin_bloqueado[numero_regalo] = false;
		ini_write_real("jugadorDatos", "skin_bloqueado" + string(numero_regalo), false);
	} 
	if (probabilidad >= 96 && probabilidad <= 100) 
	{
		angulo_final = 270;
		regalo = "100 Diamantes";
		global.monedas += 100;
		ini_write_real("jugadorDatos", "monedas", global.monedas);
	}
	ini_close();
} 