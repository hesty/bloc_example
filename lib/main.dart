import 'package:bloc_example/screens/cart_screen.dart';
import 'package:bloc_example/screens/produc_list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Example',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "/":(BuildContext context) =>ProductListScreen(),
        "/cart":(BuildContext context) =>CartScreen()
      },
      initialRoute: "/",
    );
  }
}
