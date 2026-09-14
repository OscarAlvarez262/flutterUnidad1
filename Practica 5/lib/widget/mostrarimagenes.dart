import 'package:flutter/material.dart'; // Importa los componentes visuales de Flutter.

class Mostrarimagenes extends StatefulWidget {
  // Declara la pantalla Mostrarimagenes como un StatefulWidget.
  const Mostrarimagenes({
    super.key,
  }); // Constructor de la clase Mostrarimagenes.
  @override
  State<StatefulWidget> createState() {
    // Crea el estado que manejará la pantalla.
    return Imagenes(); // Retorna la clase que contiene el diseño de la pantalla.
  }
}

class Imagenes extends State<Mostrarimagenes> {
  // Define el estado y diseño de la pantalla Mostrarimagenes.
  @override
  Widget build(BuildContext context) {
    // Construye la interfaz gráfica de la pantalla.
    return Scaffold(
      // Proporciona la estructura principal de la pantalla.
      backgroundColor:
          Colors.blue, // Establece el fondo de la pantalla en color azul.
      appBar: AppBar(
        // Crea la barra superior de la aplicación.
        title: Text(
          'Imagenes',
          style: TextStyle(color: Colors.black),
        ), // Muestra el título "Imagenes" en color negro.
      ),
      body: Column(
        // Organiza los elementos principales de forma vertical.
        children: [
          // Contiene los elementos que estarán dentro de la columna.
          Expanded(
            // Hace que este elemento ocupe el espacio disponible proporcionalmente.
            child: Container(
              // Crea un contenedor para la primera sección.
              width: double.infinity, // Hace que el contenedor ocupe todo el ancho disponible.
              height: 200, // Establece una altura de 200 píxeles.
              child: SingleChildScrollView(
                // Permite desplazarse cuando el contenido supera el espacio disponible.
                child: Column(
                  // Organiza las imágenes verticalmente.
                  children: [
                    // Contiene las imágenes que se mostrarán.
                    Image.asset(
                      "assets/mapache.jpg",
                      width: 300,
                      height: 300,
                    ), // Muestra la imagen mapache.jpg desde la carpeta assets.
                    Image.asset(
                      "assets/laptop.jpeg",
                      width: 300,
                      height: 300,
                    ), // Muestra la imagen laptop.jpeg desde la carpeta assets.
                    Image.asset(
                      "assets/perro.jpg",
                      width: 300,
                      height: 300,
                    ), // Muestra la imagen perro.jpg desde la carpeta assets.
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            // Hace que esta segunda sección ocupe el espacio disponible proporcionalmente.
            child: Container(
              // Crea un segundo contenedor.
              width: double.infinity, // Hace que el contenedor ocupe todo el ancho disponible.
              height: 200, // Establece una altura de 200 píxeles.
              child: SingleChildScrollView(
                // Permite desplazarse cuando el contenido supera el espacio disponible.
                child: Column(
                  // Organiza las imágenes verticalmente.
                  children: [
                    // Contiene las imágenes que se mostrarán.
                    Image.asset(
                      "assets/mapache.jpg",
                      width: 300,
                      height: 300,
                    ), // Muestra nuevamente la imagen del mapache.
                    Image.asset(
                      "assets/laptop.jpeg",
                      width: 300,
                      height: 300,
                    ), // Muestra nuevamente la imagen de la laptop.
                    Image.asset(
                      "assets/perro.jpg",
                      width: 300,
                      height: 300,
                    ), // Muestra nuevamente la imagen del perro.
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
