class Product {

  String _name ;
  int _price ;
  bool _isChecked ;

  Product(this._name , this._price , this._isChecked) ;

  set name(String name){
    _name = name ;
  } 
  String get name => _name ;

  set price(int price){
    _price = price ;
  }

  int get price => _price ;

  set isChecked(bool checkd) {
    _isChecked = checkd ;
  }

  bool get isChecke => _isChecked ;
}