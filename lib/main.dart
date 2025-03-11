import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Color> colors = [
    const Color(0xffffffff),
    Colors.amber[200]!,
    Colors.amber[300]!,
    Colors.amber[400]!,
    Colors.amber[500]!,
    Colors.amber[600]!,
    Colors.amber[700]!,
    Colors.amber[800]!,
    Colors.white, // Item 9 en color blanco
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff54aff9),
        title: Text(
          'Ever Pereyra 1282',
          style: TextStyle(color: Colors.white), // Texto en blanco
        ),
      ),
      body: Center(
        child: ListView.separated(
          //List view
          padding: EdgeInsets.all(16),
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return Container(
              height: 45, // Se redujo la altura para mejor visualización
              width:
                  MediaQuery.of(context).size.width * 0.8, // Se redujo el ancho
              color: colors[index], // Fondo de cada item
              alignment: Alignment.center,
              child: Text(
                'Item ${index + 1}',
                style: TextStyle(
                  fontSize: 18,
                  color: index == 8
                      ? Colors.black
                      : Colors.black, // Texto negro para el Item 9
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => Divider(
            thickness: 1.5,
            color: Colors.black, // Línea separadora negra
          ),
        ),
      ),
    );
  }
}
