import 'dart:async';

import 'package:bloc_example/models/cart.dart';
import 'file:///C:/Users/Cihat/Desktop/Flutter_Project/bloc_example/lib/data/cart_service.dart';

class CartBloc {
  final cartStreamController = StreamController.broadcast();

  Stream get getStream => cartStreamController.stream;

  void addToCart(Cart item) {
    CartService.addToCart(item);
    //build func calistir
    cartStreamController.sink.add(CartService.getCart());
  }

  void removeFromCart(Cart item) {
    CartService.removeFromCart(item);
    cartStreamController.sink.add(CartService.getCart());
  }

  List<Cart> getCart() {
    return CartService.getCart();
  }
}
final cartBloc = CartBloc();
