import 'package:flutter/material.dart';

import '../pages/product_details.dart';

class Cart_Products extends StatefulWidget {
  Cart_Products({super.key});

  @override
  State<Cart_Products> createState() => _Cart_ProductsState();
}

var Products_on_the_cart = [];

class _Cart_ProductsState extends State<Cart_Products> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_Cart_Product(
            cart_prod_name: Products_on_the_cart[index]['name'],
            cart_prod_color: Products_on_the_cart[index]['color'],
            cart_prod_qty: Products_on_the_cart[index]['qty'],
            cart_prod_size: Products_on_the_cart[index]['size'],
            cart_prod_price: Products_on_the_cart[index]['price'],
            cart_prod_picture: Products_on_the_cart[index]['picture'],
            cart_prod_brand: Products_on_the_cart[index]['brand'],
            cart_prod_details: Products_on_the_cart[index]['details'],
          );
        });
  }
}

class Single_Cart_Product extends StatelessWidget {
  const Single_Cart_Product({
    super.key,
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_price,
    this.cart_prod_size,
    this.cart_prod_color,
    this.cart_prod_qty,
    this.cart_prod_details,
    this.cart_prod_brand,
  });
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;
  final cart_prod_details;
  final cart_prod_brand;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context).push(new MaterialPageRoute(
          builder: (context) => ProductDetails(
                product_detail_name: cart_prod_name,
                product_detail_price: cart_prod_price,
                product_detail_old_price: cart_prod_price,
                product_detail_picture: cart_prod_picture,
                product_details: cart_prod_details,
                product_detail_brand: cart_prod_brand,
              ))),
      child: Card(
        elevation: 20,
        child: ListTile(
          leading: Image.asset(
            cart_prod_picture,
            width: 80,
            height: 80,
          ),
          title: Text(cart_prod_name),
          subtitle: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Text("Size : "),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      cart_prod_size,
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.red),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                    child: Text("Color : "),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      cart_prod_color,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  '₹' + '${cart_prod_price}',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.red,
                    fontSize: 19,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
