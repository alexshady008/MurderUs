/// @description Propiedades
// Puede escribir su código en este editor

// Color
var color1 = make_color_rgb(255, 67, 67) //rojo
var color2 = make_color_rgb(255, 170, 69) //Naranja
var color3 = make_color_rgb(255, 255, 72) //Amarillo
var color4 = make_color_rgb(74, 255, 78) //Verde
var color5 = make_color_rgb(80, 255, 255) //celeste
var color6 = make_color_rgb(77, 77, 255) //Azul
var color7 = make_color_rgb(204, 80, 255) //Violeta
var color8 = make_color_rgb(216, 216, 216) //Gris

randomize()
color = choose(color1,color2,color3,color4,color5,color6,color7,color8)

//Angulo
//phy_fixed_rotation = true
angulo = irandom(360)

//Escala
escala = random_range(0.75, 1.25)

// Velocidad
vel_vertical = irandom_range(5,10)
//vel_vertical = 500

limiteY=noone