import 'package:flutter/material.dart';
import 'package:nuevo_provaider/item.dart';
import 'package:nuevo_provaider/modelo/carrito.dart';
import 'package:nuevo_provaider/modelo/carrito_widget.dart';
import 'package:nuevo_provaider/modelo/producto.dart';
import 'package:provider/provider.dart';

import 'mocks/productos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Carrito>(
      create: (context) => Carrito(),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PaginaPrincipal(),
      ),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Listado de productos'),
          actions: [
            TextButton(
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CarritoWidget())),
                child: Text(
                  'Carrito',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
        body: ListView.builder(
          itemCount: productos.length,
          itemBuilder: (context, index) => Item(productos[index]),
        ),
      );
}
