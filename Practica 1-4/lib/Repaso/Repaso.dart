import 'package:flutter/material.dart';

class Repaso extends StatefulWidget {
  const Repaso({super.key});
  @override
  State<StatefulWidget> createState() {
    return Disenio();
  }
}

class Disenio extends State<Repaso> {
  final TextEditingController n1 = TextEditingController();
  final TextEditingController n2 = TextEditingController();
  String r = "";
  @override
  Widget build(BuildContext contex) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Repaso', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color.fromARGB(255, 6, 79, 238),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.black,
            width: double.infinity,
            child: Text(
              'Tienes Aura?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.yellow,
                fontFamily: "Times New Roman",
                fontSize: 24,
              ),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: n1,
            decoration: InputDecoration(
              labelText: 'ingresa un numero',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.numbers),
            ),
          ),
          SizedBox(height: 15),
          TextField(
            controller: n2,
            decoration: InputDecoration(
              labelText: 'ingresa otro numero',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.numbers),
            ),
          ),
          SizedBox(height: 15),
          Text(
            // Muestra el resultado de la operación.
            r, // Utiliza el contenido de la variable r como resultado.
            style: TextStyle(
              // Define el estilo del resultado.
              fontSize: 24, // Establece el tamaño de la letra.
              fontWeight: FontWeight.bold, // Muestra el resultado en negritas.
              color: Colors.indigo, // Establece el color del resultado.
            ),
          ),
          SizedBox(
            width: double
                .infinity, // Hace que el botón ocupe todo el ancho disponible.
            child: ElevatedButton.icon(
              icon: Icon(Icons.summarize),
              onPressed: () {
                final int a = int.tryParse(n1.text) ?? 0;
                final int b = int.tryParse(n2.text) ?? 0;
                setState(() {
                  r = "${a + b}";
                });
              },
              label: Text(
                'Sumar',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
