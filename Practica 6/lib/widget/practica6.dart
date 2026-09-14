import 'package:flutter/material.dart'; // Importa las herramientas visuales de Flutter
import 'package:flutter_application_3/widget/acceso.dart'; // Importa la pantalla Acceso

class practica6 extends StatefulWidget {
  // Crea un StatefulWidget llamado practica6
  const practica6({super.key}); // Constructor de la clase
  @override
  State<StatefulWidget> createState() {
    // Crea el estado de la pantalla
    return login(); // Regresa la clase login que manejará el estado
  }
}

class login extends State<practica6> {
  // Clase que contiene la lógica y diseño de practica6
  TextEditingController usuario = new TextEditingController(); // Controller para obtener el texto del usuario
  TextEditingController password =
      new TextEditingController(); // Controller para obtener la contraseña
  void validar() {
    // Método que valida los datos ingresados
    String u = usuario.text; // Guarda en u el texto escrito en usuario
    String p = password.text; // Guarda en p el texto escrito en password
    setState(() {
      // Indica que habrá un cambio en la pantalla
      if (u == "admin" && p == "12345") {
        // Comprueba si usuario y contraseña son correctos
        //Alertas("Datos correctos", "Bienvenido"); // Mostraría una alerta de datos correctos
        //Navigator.push(//esto nos permite regresar // Navega a otra pantalla pero permite regresar
        Navigator.pushReplacement(
          // Navega a otra pantalla y reemplaza la actual
          //esto no me permite regresar // Al reemplazar la pantalla ya no se puede regresar con el botón atrás
          context, // Indica en qué parte de la aplicación se hará la navegación
          MaterialPageRoute(
            // Crea una ruta para cambiar de pantalla
            builder: (context) => Acceso(
              dato: u,
              datop: p,
            ), // Abre Acceso y manda usuario y contraseña
          ),
        );
      } else {
        // Si los datos no son correctos
        Alertas("Error", "Datos inclorrectos"); // Muestra una alerta de error
        usuario.clear(); // Borra el contenido del campo usuario
        password.clear(); // Borra el contenido del campo contraseña
      }
    });
  }

  void Alertas(String titulo, String mensaje) {
    // Método para mostrar una alerta
    showDialog(
      // Muestra una ventana de diálogo
      context: context, // Indica dónde se mostrará la alerta
      builder: (context) {
        // Construye el contenido de la alerta
        return AlertDialog(
          // Crea la ventana de alerta
          title: Text(
            // Título de la alerta
            titulo, // Utiliza el título recibido por el método
            style: TextStyle(
              fontSize: 25,
              color: Colors.red,
            ), // Cambia tamaño y color del texto
          ),
          content: Text(
            // Contenido de la alerta
            mensaje, // Utiliza el mensaje recibido por el método
            style: TextStyle(
              fontSize: 25,
              color: Colors.red,
            ), // Cambia tamaño y color del texto
          ),
          actions: [
            // Contiene los botones de la alerta
            TextButton(
              // Crea un botón de texto
              onPressed: () {
                // Acción que ocurre al presionar el botón
                Navigator.of(context).pop(); // Cierra la ventana de alerta
              },
              child: Text('Aceptar'), // Texto del botón
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Construye la interfaz gráfica
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
              padding: const EdgeInsets.all(
                8.0,
              ), // Agrega 8 de espacio en todos los lados
              child: Column(
                // Organiza los elementos verticalmente
                mainAxisSize: MainAxisSize
                    .min, // La columna ocupa solo el espacio necesario
                children: [
                  // Lista de elementos dentro de la columna
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
                    // Contenedor para la imagen
                    width: 120, // Ancho de 120
                    height: 120, // Alto de 120
                    decoration: BoxDecoration(
                      // Permite decorar el contenedor
                      shape: BoxShape.circle, // Hace el contenedor circular
                      color: Colors.white, // Color de fondo blanco
                    ),
                    child: ClipOval(
                      child: Image.asset('assets/usuario.png'),
                    ), // Muestra una imagen recortada en forma circular
                  ),
                  SizedBox(height: 10), // Deja 10 de espacio vertical
                  Container(
                    // Contenedor del campo usuario
                    width: double.infinity, // Ocupa todo el ancho disponible
                    child: TextField(
                      // Campo para introducir texto
                      controller: usuario, // Conecta el TextField con el controller usuario
                      decoration: InputDecoration(
                        // Configura la apariencia del campo
                        labelText: 'Escribe el usuario', // Texto de etiqueta
                        hintText: 'ingresa el usuario', // Texto de ayuda
                        border: OutlineInputBorder(
                          // Crea un borde alrededor del campo
                          borderRadius: BorderRadius.circular(
                            5,
                          ), // Redondea el borde
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Deja 10 de espacio vertical
                  Container(
                    // Contenedor del campo contraseña
                    width: double.infinity, // Ocupa todo el ancho disponible
                    child: TextField(
                      // Campo para introducir la contraseña
                      controller: password, // Conecta el TextField con el controller password
                      decoration: InputDecoration(
                        // Configura la apariencia del campo
                        labelText: 'Escribe la contraseña', // Texto de etiqueta
                        hintText: 'ingresa la contraseña', // Texto de ayuda
                        border: OutlineInputBorder(
                          // Crea un borde alrededor del campo
                          borderRadius: BorderRadius.circular(
                            5,
                          ), // Redondea el borde
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Deja 10 de espacio vertical
                  Container(
                    // Contenedor del botón
                    width: double.infinity, // Ocupa todo el ancho disponible
                    child: ElevatedButton.icon(
                      // Crea un botón con posibilidad de agregar icono
                      onPressed:
                          validar, // Al presionar ejecuta el método validar
                      label: Text(
                        // Texto del botón
                        'Aceptar', // Texto mostrado
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blueGrey,
                        ), // Estilo del texto
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
