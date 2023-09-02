import 'package:e_mart/pages/product_details.dart';
import 'package:flutter/material.dart';
import '../components/cartproducts.dart';

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Orders'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Order_Products(),

    );
  }

}

class Order_Products extends StatefulWidget {
  Order_Products({super.key});

  @override
  State<Order_Products> createState() => _Order_ProductsState();
}
var Products_on_the_order = [
  {
    "name": "NIFTY Women's Slim Fit Jeans",
    "picture": "images/products/jeans.jpg",
    "old_price": 1299.0,
    "price": 489.0,
    "details": "Care Instructions: Machine Wash\n"
        "Fit Type: Slim\n"
        "Material: 70.5% cotton, 27.5% poly, 2% spandex\n"
        "Mid rise\n"
        "Stretchable\n"
        "Inseam length: 27 inches\n"
        "Machine wash cold\n"
        "Number of pockets: 5\n",
    "brand": 'Nifty',
    "size": 'M',
    "qty": 1,
    "color": "Blue",

  },
  {
    "name": "LEVI'S Men's Slim Fit Jeans",
    "picture": "images/products/jeans_men.jpg",
    "old_price": 3199.0,
    "price": 1599,
    "details": "Care Instructions: Machine Wash\n"
        "Fit Type: Slim\n"
        "Levi's Men's 511 Slim Fit Jeans\n",
    "brand": "Levis's",
    "size": 'M',
    "qty": 1,
    "color": "Black",
  },
  {
    "name": "CASIO Watch",
    "picture": "images/products/watch.jpg",
    "old_price": 10995,
    "price": 9995,
    "details": "Dial Color: Black, Case Shape: Round, Dial Glass Material: Mineral. Size of case : 47×43.5×10.4mm\n"
        "Band Color: Silver, Band Material: Stainless Steel\n"
        "Watch Movement Type: Quartz, Watch Display Type: Analog\n"
        "Case Material: Metal, Case Diameter: 43.5 millimeters\n"
        "Water Resistance Depth: 50 meters, Fold-Over Clasp with Safety\n"
        "Ideal for birthday, anniversary and wedding gift\n",
    "brand": 'Casio',
    "size": 'M',
    "qty": 1,
    "color": 'Silver',
  },
];


class _Order_ProductsState extends State<Order_Products> {
  @override

  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context,index){
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
        }

    );
  }
}


class Single_Cart_Product extends StatelessWidget {
  const Single_Cart_Product({super.key, this.cart_prod_name, this.cart_prod_picture, this.cart_prod_price, this.cart_prod_size, this.cart_prod_color, this.cart_prod_qty, this.cart_prod_details, this.cart_prod_brand,});
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
      onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (context) => ProductDetails(
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
          leading: Image.asset(cart_prod_picture,
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
                    child: Text(cart_prod_size,style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.red),),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                    child: Text("Color : "),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(cart_prod_color,style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.red,),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text('₹'+'${cart_prod_price}',style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.red,
                  fontSize: 19,
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

