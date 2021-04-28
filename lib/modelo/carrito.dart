import 'package:nuevo_provaider/modelo/producto.dart';

class Carrito {
  List<Producto> _carrito = [];

  List<Producto> getProductos() => _carrito;

  void agregarAlcarrito(Producto producto) {
    _carrito.add(producto);
  }

  void eliminarProductoDelCArrito(Producto producto) {
    _carrito.removeWhere((element) => element == producto);
  }
}
