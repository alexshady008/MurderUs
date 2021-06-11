// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dibuja_texto_escena1(posX, posY, c_letra, c_borde){
	draw_set_halign(fa_center)
	draw_set_valign(fa_top)
	draw_set_font(fnt_grande)
	var sep = 75
	var width = 1200
	var escala = 0.65
	switch(os_get_language()) {
		case "es": draw_text_outline4("Años atrás, una raza alienígena intentó invadir el planeta Centryx. Su objetivo era conquistarlo para extraer los valiosos minerales que se usaban como fuente de poder: la centrita. Sus pacíficos habitantes, los centrianos, libraron una gran guerra y lograron repeler la invasión, pero el planeta quedó inhabitable y ambas razas al borde de la extinción.",posX,posY,c_borde,1,1,c_letra,sep,width,escala,0) break;
		case "pt": draw_text_outline4("Há anos atrás, uma raça alienígena tentou invadir o planeta Centryx. Seu objetivo era conquistá-lo para extrair os valiosos minerais que eram usados como fonte de energia: a centrita. Seus pacíficos habitantes, os Centrians, travaram uma grande guerra e conseguiram repelir a invasão, mas o planeta ficou inabitável e ambas as raças à beira da extinção.",posX,posY,c_borde,1,1,c_letra,sep,width,escala,0) break;
		default: draw_text_outline4("Years ago, an alien race tried to invade the planet Centryx. His objective was to conquer it to extract the valuable minerals that were used as a source of power: the centrite. Its peaceful inhabitants, the Centrians, waged a great war and managed to repel the invasion, but the planet was left uninhabitable and both races on the brink of extinction.",posX,posY,c_borde,1,1,c_letra,sep,width,escala,0) break;
	}
}