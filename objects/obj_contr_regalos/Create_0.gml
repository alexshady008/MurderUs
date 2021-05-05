/// @description Control de la rueda

enum EtapasRueda {
	Girando,
	AjustandoPosicion,
	MostrandoRecomensa,
	Final,
}

enum RegalosRueda {
	Mascota,
	DiamantesDiez,
	Accesorio,
	Prenda,
	DiamantesCincuenta,
	Sombrero,
	Diamantes100,
	Skin,
}

global.etapa_rueda = EtapasRueda.Girando;

//Se agregan las frecuencas a la estructura que las administra
var frecuencias = new RandomFrecuencias();
frecuencias.AgregarFrecuencia(RegalosRueda.Accesorio, 20);
frecuencias.AgregarFrecuencia(RegalosRueda.Prenda, 15);
frecuencias.AgregarFrecuencia(RegalosRueda.Sombrero, 15);
frecuencias.AgregarFrecuencia(RegalosRueda.DiamantesDiez, 15);
frecuencias.AgregarFrecuencia(RegalosRueda.DiamantesCincuenta, 10);
frecuencias.AgregarFrecuencia(RegalosRueda.Mascota, 10);
frecuencias.AgregarFrecuencia(RegalosRueda.Skin, 10);
frecuencias.AgregarFrecuencia(RegalosRueda.Diamantes100, 5);

//Se calcula la cantidad de regalos segun los datos ingresados
var regalos = frecuencias.Contar();
var porcion_de_rueda = 360 / regalos;

//Se obtiene un regalo random
regalo_escogido = frecuencias.ValorRandom();

//Se destruye el struct
frecuencias.Destruir();

//Se calcula la recompensa a partir del regalo escogido
sprite_escogido = -1;
event_user(0);

//Se calcula la porcion de la rueda que debe mostrar el regalo
var angulo_destino = porcion_de_rueda * regalo_escogido;
obj_rueda_regalos.angulo_destino = angulo_destino;
obj_rueda_regalos.image_angle = angulo_destino;

//Se guarda la fecha del regalo
global.fecha_ultimo_regalo = date_current_datetime();

ini_open("comandos.ini");
ini_write_real("jugadorDatos", "fecha_ultimo_regalo", global.fecha_ultimo_regalo);
ini_close();