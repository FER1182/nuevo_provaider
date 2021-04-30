import 'package:flutter/cupertino.dart';
import 'package:nuevo_provaider/modelo/producto.dart';

class Carrito extends ChangeNotifier {
  List<Producto> _carrito = [];

  List<Producto> getProductos() => _carrito;

  void agregarAlcarrito(Producto producto) {
    _carrito.add(producto);
    //notifyListeners();
  }

  void eliminarProductoDelCArrito(Producto producto) {
    _carrito.removeWhere((element) => element == producto);
  }
}
