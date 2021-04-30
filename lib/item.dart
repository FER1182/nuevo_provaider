import 'package:flutter/material.dart';
import 'package:nuevo_provaider/modelo/carrito.dart';
import 'package:nuevo_provaider/modelo/producto.dart';
import 'package:provider/provider.dart';

import 'mocks/productos.dart';

class Item extends StatelessWidget {
  Item(this.producto);

  final Producto producto;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(producto.nombre),
              Text(producto.precio.toString()),
            ],
          ),
          Expanded(
            child: SizedBox(),
          ),
          ElevatedButton(
              onPressed: () => Provider.of<Carrito>(context, listen: false)
                  .agregarAlcarrito(producto),
              child: Text('Agregar')),
        ],
      );
}
