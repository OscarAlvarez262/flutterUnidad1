import 'package:flutter/material.dart'; // Importa los componentes visuales de Flutter.

class Programa4 extends StatefulWidget {
  // Declara Programa4 como un StatefulWidget.
  @override
  State<StatefulWidget> createState() {
    // Crea el estado que manejará la pantalla.
    return Clases(); // Retorna la clase que contiene la lógica y diseño.
  }
}

class Clases extends State<Programa4> {
  // Define el estado de la pantalla Programa4.
  final TextEditingController n1 = TextEditingController(); // Controla el contenido del primer campo de texto.
  final TextEditingController n2 = TextEditingController(); // Controla el contenido del segundo campo de texto.
  String
  r = "",
  oper =
      ""; // r almacena el resultado y oper almacena la operación seleccionada.
  void Operaciones() {
    // Método que realiza la operación seleccionada.
    final int a =
        int.tryParse(n1.text) ??
        0; // Convierte el primer valor de texto a entero; si falla, utiliza 0.
    final int b =
        int.tryParse(n2.text) ??
        0; // Convierte el segundo valor de texto a entero; si falla, utiliza 0.
    setState(() {
      // Actualiza la interfaz después de realizar la operación.
      print(
        "Oper: " + oper,
      ); // Muestra en la consola la operación seleccionada.
      if (oper == "Suma") {
        // Comprueba si la operación seleccionada es una suma.
        r = "${a + b}"; // Suma los dos números y guarda el resultado.
      }
      if (oper == "Resta") {
        // Comprueba si la operación seleccionada es una resta.
        r = "${a - b}"; // Resta el segundo número al primero y guarda el resultado.
      }
      if (oper == "Multiplicación") {
        // Comprueba si la operación seleccionada es una multiplicación.
        r = "${a * b}"; // Multiplica los dos números y guarda el resultado.
      }
      if (oper == "División") {
        // Comprueba si la operación seleccionada es una división.
        r = "${a / b}"; // Divide el primer número entre el segundo y guarda el resultado.
      }
      ScaffoldMessenger.of(context).showSnackBar(
        // Permite mostrar un mensaje temporal en la pantalla.
        SnackBar(
          content: Text("El resultado:" + r),
        ), // Muestra el resultado de la operación en un SnackBar.
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    // Construye la interfaz gráfica de la pantalla.
    return Scaffold(
      // Proporciona la estructura principal de la pantalla.
      backgroundColor:
          Colors.grey, // Establece el fondo de la pantalla en color gris.
      appBar: AppBar(
        // Crea la barra superior de la aplicación.
        title: Text('Suma de dos numeros'), // Muestra el título de la pantalla.
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
            // Define la forma de los bordes de la tarjeta.
            borderRadius: BorderRadius.circular(
              5,
            ), // Establece bordes redondeados de 5 píxeles.
          ),
          elevation: 15, // Agrega profundidad y sombra a la tarjeta.
          shadowColor:
              Colors.white, // Establece el color de la sombra de la tarjeta.
          child: Padding(
            // Agrega espacio interno alrededor del contenido.
            padding: EdgeInsets.all(
              20,
            ), // Establece 20 píxeles de espacio en todos los lados.
            child: Column(
              // Organiza los elementos de forma vertical.
              mainAxisSize: MainAxisSize
                  .min, // Hace que la columna ocupe solo el espacio necesario.
              children: [
                // Contiene todos los elementos de la columna.
                Text(
                  'Ingresa los datos a sumar', // Muestra un mensaje para indicar que se deben ingresar los números.
                  style: TextStyle(
                    // Define el estilo del texto.
                    fontSize: 24, // Establece el tamaño de la letra.
                    fontWeight: FontWeight
                        .bold, // Hace que el texto aparezca en negritas.
                    color: Colors.indigo, // Establece el color del texto.
                  ),
                ),
                SizedBox(
                  height: 15,
                ), // Agrega un espacio vertical de 15 píxeles.
                TextField(
                  // Crea el campo para introducir el primer número.
                  controller: n1, // Vincula el campo con el controlador n1.
                  decoration: InputDecoration(
                    // Define la apariencia del campo de texto.
                    labelText: "Escribe un numero", // Muestra la etiqueta del primer campo.
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
                  controller: n2, // Vincula el campo con el controlador n2.
                  decoration: InputDecoration(
                    // Define la apariencia del campo de texto.
                    labelText: "Escribe otro numero", // Muestra la etiqueta del segundo campo.
                    border: OutlineInputBorder(), // Agrega un borde alrededor del campo.
                    prefixIcon: Icon(
                      Icons.amp_stories,
                    ), // Agrega un icono al inicio del campo.
                  ),
                ),
                SizedBox(
                  height: 20,
                ), // Agrega un espacio vertical de 20 píxeles.
                /*Text(r, // Código comentado que anteriormente mostraba el resultado directamente.
                style: TextStyle( // Define el estilo del resultado.
                  fontSize: 24, // Establece el tamaño de la letra.
                  fontWeight: FontWeight.bold, // Hace que el resultado aparezca en negritas.
                  color: Colors.indigo, // Establece el color del resultado.
                ),
                ),*/
                DropdownButtonFormField<String>(
                  // Crea una lista desplegable para seleccionar la operación.
                  decoration: InputDecoration(
                    // Define la apariencia de la lista desplegable.
                    labelText: "Elige la operación", // Muestra la etiqueta de la lista.
                    border: OutlineInputBorder(), // Agrega un borde alrededor de la lista.
                  ),
                  items: [
                    // Contiene las opciones disponibles para seleccionar.
                    DropdownMenuItem(
                      value: 'Suma',
                      child: Text('Suma'),
                    ), // Opción para realizar una suma.
                    DropdownMenuItem(
                      value: 'Resta',
                      child: Text('Resta'),
                    ), // Opción para realizar una resta.
                    DropdownMenuItem(
                      value: 'Multiplicación',
                      child: Text('Multiplicación'),
                    ), // Opción para multiplicar.
                    DropdownMenuItem(
                      value: 'División',
                      child: Text('División'),
                    ), // Opción para dividir.
                  ],
                  onChanged: (value) => oper =
                      value!, // Guarda en oper la operación seleccionada.
                  validator: (v) => v == null
                      ? "Elige una operacion"
                      : null, // Valida que se haya seleccionado una operación.
                ),
                SizedBox(
                  height: 20,
                ), // Agrega un espacio vertical de 20 píxeles.
                SizedBox(
                  // Permite controlar el tamaño del botón.
                  width: double.infinity, // Hace que el botón ocupe todo el ancho disponible.
                  child: ElevatedButton.icon(
                    // Crea un botón elevado con un icono.
                    icon: Icon(Icons.summarize), // Agrega un icono al botón.
                    onPressed: Operaciones, // Ejecuta el método Operaciones al presionar el botón.
                    label: Text(
                      'Realizar operación', // Define el texto que aparece dentro del botón.
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
