import 'package:flutter/material.dart';
import '../components/cartproducts.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Cart_Products(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                title: Text(
                  'Total:',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  '\₹${calculateTotalPrice()}',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  'Checkout',
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }

// Calculate the total price of products in the cart
  double calculateTotalPrice() {
    double totalPrice = 0.0;
    for (var product in Products_on_the_cart) {
      // Cast the 'price' and 'qty' values to double
      double price = double.parse(product['price'].toString());
      double qty = double.parse(product['qty'].toString());

      totalPrice += (price * qty);
    }
    return totalPrice;
  }


}
