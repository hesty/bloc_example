import 'package:bloc_example/blocs/cart_bloc.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: StreamBuilder(
       stream: cartBloc.getStream,
        initialData: cartBloc.getCart(),
        builder: (context,snapshot){
         return snapshot.data.length>0 ? buildCart(snapshot)
             :Center(child:CircularProgressIndicator(),);
        },
      ),
    );
  }

  Widget buildCart(AsyncSnapshot snapshot) {
    return ListView.builder(
      itemCount: snapshot.data.length,
      itemBuilder: (BuildContext ,index){
        final cart = snapshot.data;
        return ListTile(
          title: Text(cart[index].product.name),
          subtitle: Text(cart[index].product.price.toString()),
          trailing: IconButton(
            icon: Icon(Icons.remove_shopping_cart),
            onPressed: (){
              cartBloc.removeFromCart(cart[index]);
            },
          ),
        );
      },
    );
  }
}
