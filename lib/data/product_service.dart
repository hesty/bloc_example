import 'package:bloc_example/models/product.dart';

class ProductService {
  static List<Product> products = new List<Product>();

  static ProductService _singeleton = ProductService._internal();

  //ProductService._internal yerine ProductService._singelton a cevirdik
  factory ProductService(){
    return _singeleton;
  }
  ProductService._internal();

  static List<Product> getAll() {
    products.add(new Product(1, "Acer Laptop", 8000));
    products.add(new Product(2, "Asus Laptop", 6000));
    products.add(new Product(3, "Lenovo Laptop", 5000));
    products.add(new Product(4, "Toshiba Laptop", 9000));
    return products;
  }



}
