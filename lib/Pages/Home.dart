import 'dart:math';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:inhertedwidget_project/Models/Product.dart';
import 'package:inhertedwidget_project/Pages/CartPage.dart';
import 'package:inhertedwidget_project/SharedProducts.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  List<Product> products = List.generate(50, (index) {
    return Product('product $index', Random().nextInt(5000), false);
  });

  @override
  Widget build(BuildContext context) {
    SharedProducts sharedCart = SharedProducts.of(context) ;

    return StatefulBuilder(
      builder: (context, StateSetter setState) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Shopping Cart"),
            actions: [
              Container(
                margin: const EdgeInsets.only(top: 15, right: 25),
                child: Badge(
                  badgeContent: Text(
                    "${sharedCart.cartPorudcts.length}",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {
                      setState(() {
                        // your code here >>>>>>>>??
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => CartDetails()));
                      });
                    },
                  ),
                ),
              )
            ],
          ),
          body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 8.0,
                margin: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(products[index].name),
                  subtitle: Text("${products[index].price}"),
                  trailing: Checkbox(
                    value: products[index].isChecke,
                    onChanged: (value) {
                      setState(() {
                        products[index].isChecked = !products[index].isChecke;
                        if (products[index].isChecke) {
                          sharedCart.cartPorudcts.add(products[index]) ;
                        }else {
                          sharedCart.cartPorudcts.remove(products[index]) ;
                        }
                      });
                    },
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
