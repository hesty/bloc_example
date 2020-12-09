import 'package:bloc_example/models/cart.dart';

class CartService {
  static List<Cart> cartItems = new List<Cart>();

  static CartService _singLeton = CartService._internal();

  factory CartService() {
    return _singLeton;
  }
  CartService._internal();

  static void addToCart(Cart item) {
    cartItems.add(item);
  }

  static void removeFromCart(Cart item) {
    cartItems.remove(item);
  }

  static List<Cart> getCart() {
    return cartItems;
  }

}
