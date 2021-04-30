import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nuevo_provaider/item.dart';
import 'package:nuevo_provaider/modelo/carrito.dart';
import 'package:provider/provider.dart';

class CarritoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Consumer<Carrito>(
        builder: (context, value, child) => Scaffold(
          appBar: AppBar(
            title: Text('Carrito de Compras'),
          ),
          body: ListView.builder(
            itemCount: value.getProductos().length,
            itemBuilder: (context, index) => Item(value.getProductos()[index]),
          ),
        ),
      );
}
