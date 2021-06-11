# MurderUs

> **Detalles generales del Proyecto**


1. **Objetos**
- *Controladores (Core)*
Objetos sin imágenes que controlan la lógica de cada entorno, interfaz o mecánica específica. Estos, no suelen gestionar la lógica de cada objeto en particular. Por ejemplo, el obj_juego_online controla toda la lógica exterior del juego, como los Draws en las pantallas, el evento Networking cada vez que se reciben datos, inicia variables en Room Start, etc.
- *Interfaces – Botones*
Botones u otros objetos de la interfaz del usuario. Cada objeto tiene su propia lógica. Por ejemplo el joystick del juego, botones el menú, etc.
- *Objetos de Escenarios*
Son los objetos que están en las partidas. Estos suelen ser adornos de los escenarios-mapas y no tener ninguna mecánica (por ejemplo, un simple arbol), o ser un objeto interactivo (por ejemplo, una tarea o el objeto para ver las cámaras).
Estos objetos se dividen en; Estructuras (paredes, pisos, techos, etc), objetos del Lobby, objetos de las Tareas, objetos de Colisiones (objetos ocultos que sirven para que el personaje colisione), obstáculos sin mecánicas (como una roca) y objetos interactivos con el personaje (como una tarea)
- *Personaje*
Acá están los personajes que se usarán para jugar u objetos que complementan al personaje. Hay dos tipos de personajes: obj_personaje, que es el que puede mover el jugador de ese dispositivo, y obj_entidad_online que es el que pueden mover los otros jugadores que están conectados a la misma sala.
- *Tareas Contr*
Son objetos sin imágenes que cumplen la función de controlar la mecánica de la interfaz de cada tarea cuando estás son seleccionadas.
- *Otros*
Otros tipos de objetos.


2. **Sprites**:
- *Backgrounds*
Son sprites que se utilizan como fondos de pantallas.
- *Historia – Tutorial*
Son sprites que se utilizan en la pantalla de la Historia / Tutorial.
- *Interfaces – Botones*
Son sprites que se utilizan para objetos de botones o para la interfaz de usuario.
- *Objetos de Escenarios*
Son sprites que se utilizan en objetos que están en las rooms del juego.
- *Vestimentas – Personajes – Mascotas*
Son sprites que se utilizan para los skins, accesorios, sombreros, prendas y mascotas.
- *Otros*
Otros sprites.


3. **Rooms**
- *Editor*
Aquí está la room para ver tus mapas personalizados.
- *Historia*
Aquí está la room en donde se dibuja toda la historia del juego.
- *Jugables*
Aquí están las rooms en donde se puede jugar y estas son; el lobby (sala de espera), y las rooms de cada mapa (cada mapa tiene una room ya personalizada que se usa por defecto y otra room para personalizar desde el editor)
- *Salas*
Aquí hay dos rooms; una es para crear una sala para jugar en multijugador y la otra es para seleccionar una sala creada por otro jugador.
- *Tienda*
Aquí está la room en donde se muestra la interfaz de la tienda.
- *Otros*
Otras salas con menor o nula importancia.


4. **Scripts**:
- *Editor*
Todos los scripts que influyen en la mecánica del Editor, como por ejemplo cargar o guardar los objetos, etc.
- *Red – Datos*
Todos los scripts que influyen en los envíos y recibos de datos desde el cliente al servidor para el juego multijugador. Por ejemplo, enviar posiciones del jugador, recibir mensajes, etc.
- *Historia – Tutorial*
Todos los scripts que influyen en la interfaz de la pantalla de la historia/tutorial.
- *Jugabilidad*
Todos los scripts que influyen en la jugabilidad y mecánicas del personaje. Por ejemplo, control de sprites, control de movimientos, etc.
- *PopUp*
Todos los scripts que sirven para llamar a un popup determinado.
- *Textos - Bordes*
Todos los scripts que sirven para dibujar un string con bordes.
- *Otros*
Otros scripts.


5. **Sounds**
- *Cutscenes*
Sonidos que se utilizan en las cutscenes, por ejemplo sonidos de cuando se gana o se pierde, cuando se vota a un jugador, etc.
- *Juego - Fondo*
Sonidos que se utiliza en el juego por ciertos objetos o como fondo, por ejemplo, el sonido al abrir o cerrar una alcantarilla.
- *Tareas*
Sonidos que se utilizan mientras se completan las tareas.
- *Otros*
Otros sonidos como los fondos y sonidos de botones.


6. **Extensiones**
El juego tiene 3 extensiones
- *GooglePlayAdsExtension* que sirve para activar los anuncios de Admob.
- G*ooglePlayBillingExtension* que sirve para activar y gestionar las compras (temporalmente no están disponibles las compras).
- *Share_Mobile* que sirve para poder compartir el juego mediante el portapales o por redes sociales.
