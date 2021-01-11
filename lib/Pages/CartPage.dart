import 'package:flutter/material.dart';
import 'package:inhertedwidget_project/SharedProducts.dart';

class CartDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart details"),
      ),
      body: Center(
        child: buildWidget(context) ,
      ),
    );
  }

  Widget buildWidget(BuildContext context){
    SharedProducts shared = SharedProducts.of(context);
    int numOfProducts = shared.cartPorudcts.length ;
    return StatefulBuilder(
      builder: (context, setState) {
        return Container(
          height: 100,
          child: Text(
            "$numOfProducts products is selected",
            style: TextStyle(
               fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}
