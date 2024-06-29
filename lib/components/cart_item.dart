import 'package:app1/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  // remove item from cart
  void removeItemsfromCart() {
    Provider.of<Cart>(context, listen: false).removeItemfromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: const Color.fromARGB(233, 46, 46, 46),
          borderRadius: BorderRadius.circular(10)),
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagepath),
        title: Text(
          widget.shoe.name,
          style:
              const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        subtitle: Text(
          widget.shoe.price,
          style: const TextStyle(fontSize: 12, color: Colors.white),
        ),
        trailing: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => removeItemsfromCart()),
      ),
    );
  }
}
