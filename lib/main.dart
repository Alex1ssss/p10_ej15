import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Alexis Espino Sanchez mat:1062",
            style: TextStyle(
              color: Colors.white, // Cambia el color del texto aquí
              fontWeight: FontWeight.bold, // Opcional: cambia el grosor del texto
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: OverflowBox(
            maxWidth: double.infinity,
            maxHeight: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none, // Permite que los hijos sobresalgan
              children: [
                Container(
                  width: 200,
                  height: 300,
                  color: Color.fromARGB(255, 145, 214, 81),
                  alignment: Alignment.center,
                  child: Text(
                    'Container 1',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                Positioned(
                  top: -50, // Hace que el Container 2 sobresalga 50 píxeles por encima de Container 1
                  child: Container(
                    width: 150,
                    height: 100,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text(
                      'Container 2',
                      style: TextStyle(color: Colors.white, fontSize: 14),
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
