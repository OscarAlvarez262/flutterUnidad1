import 'package:flutter/material.dart'; // Importa los componentes visuales de Material Design de Flutter.

class Practica2 extends StatefulWidget {
  // Declara la pantalla Practica2 como un StatefulWidget.
  const Practica2({super.key}); // Constructor de la clase Practica2.
  @override
  State<StatefulWidget> createState() {
    // Crea el estado que manejará la pantalla.
    return Disenio(); // Retorna la clase que contiene el diseño de la pantalla.
  }
}

class Disenio extends State<Practica2> {
  // Define el estado y diseño de la pantalla Practica2.
  @override
  Widget build(BuildContext context) {
    // Construye la interfaz gráfica de la pantalla.
    return Scaffold(
      // Proporciona la estructura principal de la pantalla.
      appBar: AppBar(
        // Crea la barra superior de la aplicación.
        title: Text(
          'Practica 2',
          style: TextStyle(color: Colors.white),
        ), // Muestra el título de la práctica en color blanco.
        backgroundColor: const Color.fromARGB(
          255,
          6,
          79,
          238,
        ), // Establece el color azul de la barra superior.
      ),
      //contenedores // Indica que en esta sección se utilizan diferentes contenedores.
      body: Column(
        // Organiza los elementos de la pantalla de forma vertical.
        mainAxisAlignment:
            MainAxisAlignment.center, // Centra los elementos verticalmente.
        children: [
          // Contiene todos los elementos que se mostrarán en la columna.
          Container(
            // Crea un contenedor para el primer texto.
            color: Colors
                .black, // Establece el fondo del contenedor en color negro.
            width: double.infinity, // Hace que el contenedor ocupe todo el ancho disponible.
            child: Text(
              // Agrega un texto dentro del contenedor.
              'Hola mundo', // Texto que se mostrará.
              textAlign: TextAlign.center, // Centra el texto horizontalmente.
              style: TextStyle(
                // Define las características visuales del texto.
                color: Colors.white, // Establece el texto en color blanco.
                fontFamily:
                    "Times New Roman", // Define la fuente Times New Roman.
                fontSize: 24, // Establece el tamaño de la letra en 24.
              ),
            ),
          ),
          SizedBox(height: 10), // Agrega un espacio vertical de 10 píxeles.
          Container(
            // Crea un segundo contenedor.
            padding: EdgeInsets.all(
              25,
            ), // Agrega un espacio interno de 25 píxeles en todos los lados.
            color:
                Colors.red, // Establece el fondo del contenedor en color rojo.
            width: double.infinity, // Hace que el contenedor ocupe todo el ancho disponible.
            child: Text(
              // Agrega un texto dentro del contenedor.
              'Hola', // Texto que se mostrará.
              textAlign: TextAlign.center, // Centra el texto horizontalmente.
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ), // Define el color blanco y tamaño 24 del texto.
            ),
          ),
          SizedBox(height: 10), // Agrega un espacio vertical de 10 píxeles.
          SizedBox(
            // Crea un espacio que también permite controlar el tamaño del botón.
            width: double
                .infinity, // Hace que el botón ocupe todo el ancho disponible.
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Boton '),
            ), // Crea un botón que actualmente no ejecuta ninguna acción.
          ),
          SizedBox(height: 10), // Agrega un espacio vertical de 10 píxeles.
          TextField(
            // Crea un campo donde el usuario puede introducir texto.
            decoration: InputDecoration(
              labelText: 'Escribe el nombre',
            ), // Muestra la etiqueta "Escribe el nombre" en el campo.
          ),
        ],
      ),
    );
  }
}
