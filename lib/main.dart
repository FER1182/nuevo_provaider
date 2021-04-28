import 'package:flutter/material.dart';

import 'mocks/productos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PaginaPrincipal(),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Listado de productos'),
        ),
        body: ListView.builder(
            itemBuilder: (context, index) => Row(
                  children: [
                    Column(
                      children: [
                        Text(productos[index].nombre),
                        Text(productos[index].precio.toString()),
                      ],
                    ),
                    ElevatedButton(onPressed: null, child: Text('Agregar')),
                  ],
                )),
      );
}
