/// @description  lo dibuja
draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_white,1)

var alfa_bloq = 0.4
var escala_moneda = 0.5
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(fnt_chica)

switch(global.elegir_tipo_vestimenta)
{
	//Skins
	case 0:
		if (global.skinElegido==tipo+1) draw_sprite_ext(sprite_index,1,x,y,escala,escala,0,c_white,1)
		scr_dibujar_skins_btn(tipo,x,y,1)
		
		//Dibuja el precio si está bloqueado
		if (tipo<global.max_skins and global.skin_bloqueado[tipo]==true){
			//draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_black,alfa_bloq)
			draw_text_outline3(""+string(global.precio_skins),x-35,y+35,c_black,1,1,c_white) 
			draw_sprite_ext(spr_moneda_icono,0,x+35,y+30,escala_moneda,escala_moneda,0,c_white,1)
		}
	break;
	
	//Prendas
	case 1:
		if (global.prendaElegida==tipo) draw_sprite_ext(sprite_index,1,x,y,escala,escala,0,c_white,1)
		scr_dibujar_prendas_btn(tipo,x,y-16)
		
		//Dibuja el precio si está bloqueado
		if (tipo<=global.max_prendas and global.prenda_bloqueada[tipo]==true){
			//draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_black,alfa_bloq)
			draw_text_outline3(""+string(global.precio_prendas),x-35,y+35,c_black,1,1,c_white) 
			draw_sprite_ext(spr_moneda_icono,0,x+35,y+30,escala_moneda,escala_moneda,0,c_white,1)
		}
		
	break;
	
	//Accesorios
	case 2:
		if (global.accesorioElegido==tipo) draw_sprite_ext(sprite_index,1,x,y,escala,escala,0,c_white,1)
		scr_dibujar_accesorio_btn(tipo,x,y,1.5)
		
		//Dibuja el precio si está bloqueado
		if (tipo <= global.max_accesorios and global.accesorio_bloqueado[tipo]==true){
			//draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_black,alfa_bloq)
			draw_text_outline3(""+string(global.precio_accesorios),x-35,y+35,c_black,1,1,c_white) 
			draw_sprite_ext(spr_moneda_icono,0,x+35,y+30,escala_moneda,escala_moneda,0,c_white,1)
		}
	break;
	
	//Sombreros
	case 3:
		if (global.sombreroElegido==tipo) draw_sprite_ext(sprite_index,1,x,y,escala,escala,0,c_white,1)
		scr_dibujar_sombrero_btn(tipo,x,y,1)
		
		//Dibuja el precio si está bloqueado
		if (tipo<=global.max_sombreros and global.sombrero_bloqueado[tipo]==true){
			//draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_black,alfa_bloq)
			draw_text_outline3(""+string(global.precio_sombreros),x-35,y+35,c_black,1,1,c_white) 
			draw_sprite_ext(spr_moneda_icono,0,x+35,y+30,escala_moneda,escala_moneda,0,c_white,1)
		}
	break;
	
	//Mascotas
	case 4:
		if (global.mascotaElegida==tipo) draw_sprite_ext(sprite_index,1,x,y,escala,escala,0,c_white,1)
		scr_dibujar_mascota_btn(tipo,x,y,1.5)
		
		//Dibuja el precio si está bloqueado
		if (tipo<=global.max_mascotas and global.mascota_bloqueada[tipo]==true){
			//draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_black,alfa_bloq)
			draw_text_outline3(""+string(global.precio_mascotas),x-35,y+35,c_black,1,1,c_white) 
			draw_sprite_ext(spr_moneda_icono,0,x+35,y+30,escala_moneda,escala_moneda,0,c_white,1)
			//if !(global.regaloSkins) draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_black,0.5)
		}
	break;
}



//draw_text_color(x,y,string(tipo),c_black,c_black,c_black,c_black,1)
//if !(global.regaloSkins) draw_sprite_ext(sprite_index,0,x,y,escala,escala,0,c_black,0.5)
