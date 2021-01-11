import 'package:flutter/material.dart';
import 'package:inhertedwidget_project/Pages/Home.dart';
import 'package:inhertedwidget_project/SharedProducts.dart';

main() => runApp(MyApp()) ;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SharedProducts(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}