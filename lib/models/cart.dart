import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes

  List<Shoe> shoeShop = [
    Shoe(
        name: '3 infinity',
        price: '24,549',
        imagepath: 'lib/imagefiles/3infinity.avif',
        description: 'Best for running.'),
    Shoe(
        name: 'Ae1future',
        price: '27,899',
        imagepath: 'lib/imagefiles/ae1future.avif',
        description: 'Futuristic Design.'),
    Shoe(
        name: 'Ozelia',
        price: '36,999',
        imagepath: 'lib/imagefiles/ozelia.avif',
        description: 'Best casual sneakers.'),
    Shoe(
        name: 'Traeyoung',
        price: '17,699',
        imagepath: 'lib/imagefiles/traeyoung.avif',
        description: 'Budget shoes.')
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemtoCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemfromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
