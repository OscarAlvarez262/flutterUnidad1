import 'package:flutter/material.dart';

// Importa la biblioteca Material de Flutter, que contiene los widgets
// y componentes necesarios para crear la interfaz gráfica.
class Inicio extends StatefulWidget {
  // Declara la clase Inicio como un StatefulWidget.
  // Esto permite que la pantalla pueda cambiar su estado durante la ejecución.
  const Inicio({super.key});
  // Constructor de la clase Inicio.
  // super.key permite identificar este widget dentro del árbol de widgets.
  @override
  State<StatefulWidget> createState() {
    // Método encargado de crear y asociar el estado del widget Inicio.
    return Disenio();
    // Retorna una instancia de la clase Disenio,
    // que contiene la estructura y diseño de la pantalla.
  }
}

class Disenio extends State<Inicio> {
  // Clase que representa el estado de Inicio.
  // Aquí se construye la interfaz que se mostrará en pantalla.
  @override
  Widget build(BuildContext context) {
    // Método build que construye y devuelve la interfaz gráfica.
    // context contiene información sobre la ubicación del widget dentro
    // del árbol de widgets de Flutter.
    return Scaffold(
      // Scaffold proporciona la estructura básica de una pantalla,
      // incluyendo elementos como AppBar y body.
      appBar: AppBar(
        // Crea la barra superior de la aplicación.
        title: Text('Practica 1', style: TextStyle(color: Colors.white)),
        // Muestra el título "Practica 1" en la barra superior.
        // El texto se establece en color blanco.
        backgroundColor: const Color.fromARGB(255, 6, 79, 238),
        // Establece el color de fondo de la barra superior
        // utilizando valores RGB y una opacidad de 255.
      ),
      body: Column(
        // Column organiza sus elementos hijos de manera vertical.
        mainAxisAlignment: MainAxisAlignment.center,
        // Centra verticalmente los elementos que se encuentran dentro
        // de la columna.
        children: [
          // Lista de widgets que se mostrarán dentro de la columna.
          Text(
            'Hola mundo',
            // Primer texto que se mostrará en la pantalla.
            style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 25),
            // Define el estilo del texto:
            // color morado y tamaño de fuente de 25.
          ),
          Text(
            'Hola',
            // Segundo texto que se mostrará debajo del primer texto.
            style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 25),
            // Aplica el mismo estilo al segundo texto:
            // color morado y tamaño de fuente de 25.
          ),
        ], // Finaliza la lista de elementos de la Column.
      ), // Finaliza el contenido principal de la pantalla.
    ); // Finaliza el Scaffold.
  } // Finaliza el método build.
} // Finaliza la clase Disenio.
