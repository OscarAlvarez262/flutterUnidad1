import 'package:flutter/material.dart'; // Importa las herramientas visuales de Flutter

class Acceso extends StatefulWidget {
  // Crea un StatefulWidget llamado Acceso
  final String dato; // Variable que recibirá el usuario
  final String datop; // Variable que recibirá la contraseña
  const Acceso({
    super.key,
    required this.dato,
    required this.datop,
  }); // Constructor que obliga a recibir dato y datop
  @override
  State<StatefulWidget> createState() {
    // Crea el estado de la pantalla
    return clase(); // Regresa la clase que controla el estado
  }
}

class clase extends State<Acceso> {
  // Clase que contiene el estado y lógica de Acceso
  String d = "", p = ""; // Variables donde se guardarán el usuario y contraseña
  @override
  void initState() {
    // Método que se ejecuta al iniciar la pantalla
    super
        .initState(); // Ejecuta primero el comportamiento original de initState
    d = widget.dato; // Obtiene el dato enviado desde practica6 y lo guarda en d
    p = widget.datop; // Obtiene la contraseña enviada desde practica6 y la guarda en p
  }

  Widget build(BuildContext context) {
    // Construye la interfaz de la pantalla
    return Scaffold(
      // Estructura principal de la pantalla
      backgroundColor: const Color.fromARGB(
        255,
        201,
        201,
        201,
      ), // Color de fondo
      appBar: AppBar(
        // Barra superior
        title: Text('Login'), // Título de la barra
        backgroundColor: const Color.fromARGB(
          255,
          197,
          236,
          236,
        ), // Color de la barra
      ),
      body: Center(
        // Centra el contenido
        child: Padding(
          // Agrega espacio alrededor del contenido
          padding: EdgeInsetsGeometry.all(
            15,
          ), // Agrega 15 de espacio en todos los lados
          child: Card(
            // Crea una tarjeta
            elevation: 8, // Agrega profundidad y sombra
            shadowColor: Colors.black, // Color de la sombra
            shape: RoundedRectangleBorder(
              // Define la forma de la tarjeta
              borderRadius: BorderRadius.circular(15), // Redondea las esquinas
            ),
            child: Padding(
              // Agrega espacio dentro de la tarjeta
              padding: const EdgeInsets.all(8.0), // Agrega 8 de espacio
              child: Column(
                // Organiza los elementos verticalmente
                mainAxisSize: MainAxisSize
                    .min, // La columna ocupa solo el espacio necesario
                children: [
                  // Lista de widgets hijos
                  Text(
                    // Muestra texto
                    'Ingresa los datos', // Texto mostrado
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.blueGrey,
                    ), // Estilo del texto
                  ),
                  SizedBox(height: 10), // Deja 10 de espacio vertical
                  Container(
                    // Contenedor de la imagen
                    width: 120, // Ancho de 120
                    height: 120, // Alto de 120
                    decoration: BoxDecoration(
                      // Permite decorar el contenedor
                      shape: BoxShape.circle, // Hace circular el contenedor
                      color: Colors.white, // Color de fondo blanco
                    ),
                    child: ClipOval(
                      child: Image.asset('assets/usuario.png'),
                    ), // Muestra la imagen recortada en círculo
                  ),
                  SizedBox(height: 10), // Deja 10 de espacio vertical
                  Text(
                    "Bienvenidos $d \n y su contraseña es $p",
                  ), // Muestra el usuario y contraseña recibidos
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
