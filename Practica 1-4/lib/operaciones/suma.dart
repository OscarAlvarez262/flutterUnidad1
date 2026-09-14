import 'dart:ui'; // Importa herramientas relacionadas con la interfaz gráfica.

import 'package:flutter/material.dart'; // Importa los componentes visuales de Flutter.

class Suma extends StatefulWidget {
  // Declara la pantalla Suma como un StatefulWidget.
  const Suma({super.key}); // Constructor de la clase Suma.
  @override
  State<StatefulWidget> createState() {
    // Crea el estado que manejará la pantalla.
    return Disenio(); // Retorna la clase que contiene el diseño de la pantalla.
  }
}

class Disenio extends State<Suma> {
  // Define el estado y diseño de la pantalla Suma.
  final TextEditingController n1 = TextEditingController(); // Controla el contenido del primer campo de texto.
  final TextEditingController n2 = TextEditingController(); // Controla el contenido del segundo campo de texto.
  String r = ""; // Variable que almacena el resultado de la suma.
  @override
  Widget build(BuildContext context) {
    // Construye la interfaz gráfica de la pantalla.
    return Scaffold(
      // Proporciona la estructura principal de la pantalla.
      backgroundColor:
          Colors.grey, // Establece el fondo de la pantalla en color gris.
      appBar: AppBar(
        // Crea la barra superior de la aplicación.
        title: Text(
          'Suma de dos numeros',
        ), // Muestra el título de la aplicación.
        backgroundColor: const Color.fromARGB(
          255,
          192,
          214,
          240,
        ), // Establece el color de fondo de la barra.
        elevation: 10, // Agrega profundidad o sombra debajo de la barra.
        shadowColor:
            Colors.indigoAccent, // Define el color de la sombra de la barra.
      ),
      body: Center(
        // Centra el contenido principal de la pantalla.
        child: Card(
          // Crea una tarjeta para contener los elementos.
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ), // Define los bordes redondeados de la tarjeta.
          elevation: 10, // Agrega profundidad y sombra a la tarjeta.
          shadowColor:
              Colors.white, // Establece el color de la sombra de la tarjeta.
          child: Padding(
            // Agrega espacio interno alrededor del contenido.
            padding: const EdgeInsets.all(
              20,
            ), // Establece 20 píxeles de espacio en todos los lados.
            child: Column(
              // Organiza los elementos de forma vertical.
              mainAxisSize: MainAxisSize
                  .min, // Hace que la columna ocupe solo el espacio necesario.
              children: [
                // Contiene todos los elementos de la columna.
                Text(
                  // Muestra un texto en pantalla.
                  'Ingresa los datos a sumar', // Texto que indica al usuario qué debe hacer.
                  style: TextStyle(
                    // Define el estilo del texto.
                    fontSize: 24, // Establece el tamaño de la letra.
                    fontWeight: FontWeight
                        .bold, // Hace que el texto aparezca en negritas.
                    color: Colors
                        .indigo, // Establece el color del texto en índigo.
                  ),
                ),
                SizedBox(
                  height: 15,
                ), // Agrega un espacio vertical de 15 píxeles.
                TextField(
                  // Crea el campo para introducir el primer número.
                  controller:
                      n1, // Vincula el campo de texto con el controlador n1.
                  decoration: InputDecoration(
                    // Define la apariencia del campo de texto.
                    labelText: 'Escribe un numero', // Muestra la etiqueta del primer campo.
                    border: OutlineInputBorder(), // Agrega un borde alrededor del campo.
                    prefixIcon: Icon(
                      Icons.amp_stories,
                    ), // Agrega un icono al inicio del campo.
                  ),
                ),
                SizedBox(
                  height: 15,
                ), // Agrega un espacio vertical de 15 píxeles.
                TextField(
                  // Crea el campo para introducir el segundo número.
                  controller:
                      n2, // Vincula el campo de texto con el controlador n2.
                  decoration: InputDecoration(
                    // Define la apariencia del campo de texto.
                    labelText: 'Escribe otro numero', // Muestra la etiqueta del segundo campo.
                    border: OutlineInputBorder(), // Agrega un borde alrededor del campo.
                    prefixIcon: Icon(
                      Icons.amp_stories,
                    ), // Agrega un icono al inicio del campo.
                  ),
                ),
                SizedBox(
                  height: 20,
                ), // Agrega un espacio vertical de 20 píxeles.
                Text(
                  // Muestra el resultado de la operación.
                  r, // Utiliza el contenido de la variable r como texto.
                  style: TextStyle(
                    // Define el estilo del resultado.
                    fontSize: 24, // Establece el tamaño de la letra.
                    fontWeight:
                        FontWeight.bold, // Muestra el resultado en negritas.
                    color: Colors.indigo, // Establece el color del resultado.
                  ),
                ),
                SizedBox(
                  height: 20,
                ), // Agrega un espacio vertical de 20 píxeles.
                SizedBox(
                  // Permite controlar el tamaño del botón.
                  width: double.infinity, // Hace que el botón ocupe todo el ancho disponible.
                  child: ElevatedButton.icon(
                    // Crea un botón elevado con un icono.
                    icon: Icon(Icons.summarize), // Agrega el icono al botón.
                    onPressed: () {
                      // Define la acción que se ejecuta al presionar el botón.
                      final int a = int.tryParse(n1.text) ?? 0; // Convierte el primer valor de texto a entero; si falla, utiliza 0.
                      final int b = int.tryParse(n2.text) ?? 0; // Convierte el segundo valor de texto a entero; si falla, utiliza 0.
                      setState(() {
                        // Actualiza la interfaz después de realizar la operación.
                        r = "${a + b}"; // Suma los dos números y guarda el resultado en r.
                      });
                    },
                    label: Text(
                      // Define el texto que aparecerá dentro del botón.
                      'Sumar', // Texto mostrado en el botón.
                      style: TextStyle(
                        // Define el estilo del texto del botón.
                        fontSize: 24, // Establece el tamaño de la letra.
                        fontWeight: FontWeight
                            .bold, // Hace que el texto aparezca en negritas.
                        color: Colors.indigo, // Establece el color del texto.
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
