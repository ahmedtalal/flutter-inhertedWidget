import 'package:flutter/material.dart' show BuildContext, InheritedWidget, Widget;
import 'package:inhertedwidget_project/Models/Product.dart';
import 'package:collection/collection.dart';

// ignore: must_be_immutable
class SharedProducts extends InheritedWidget{
  List<Product> cartPorudcts = List();
  Widget child ;
  SharedProducts({this.child}) ;

  @override
  bool updateShouldNotify(SharedProducts oldWidget) {
    return !IterableEquality().equals(cartPorudcts, oldWidget.cartPorudcts) ;
  }
  static SharedProducts of(BuildContext context) => context.dependOnInheritedWidgetOfExactType();

}