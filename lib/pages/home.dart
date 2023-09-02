import 'package:e_mart/pages/product_details.dart';
import 'package:e_mart/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:e_mart/components/products.dart';
import 'package:e_mart/components/horizontal_listView.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'about.dart';
import 'favo.dart';
import 'package:e_mart/main.dart';
import 'login.dart';
import 'myacc.dart';
import 'myorders.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text('E-Mart'),
          centerTitle: true,
          backgroundColor: Colors.red,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ))
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              //header
              UserAccountsDrawerHeader(
                  accountName: Text(
                    'Abhinav',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  accountEmail: Text(
                    'abhinavn.ug22.cs@nitp.ac.in',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  currentAccountPicture: GestureDetector(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                    ),
                  ))),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: ListTile(
                  title: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  leading: Icon(
                    Icons.home_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyAccount()));
                },
                child: ListTile(
                  title: Text('My Account',
                      style: TextStyle(
                        fontSize: 18,
                      )),
                  leading: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => MyOrders()));
                },
                child: ListTile(
                  title: Text(
                    'My Orders',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  leading: Icon(
                    Icons.shopping_basket_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/cart');
                },
                child: ListTile(
                  title: Text(
                    'Shopping Cart',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  leading: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/fav');
                },
                child: ListTile(
                  title: Text(
                    'Favourites',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  leading: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.red,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Divider(
                color: Colors.black,
                height: 40,
                indent: 5,
                thickness: 0.5,
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
                },
                child: ListTile(
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  leading: Icon(
                    Icons.settings_outlined,
                    color: Colors.grey,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> AboutPage()));
                },
                child: ListTile(
                  title: Text(
                    'About',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  leading: Icon(
                    Icons.question_mark_outlined,
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
        ),
        body: new ListView(
          children: [
            ImageCarousel(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Categories'),
            ),
            SizedBox(
              height: 20,
            ),
            HorizontalList(),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text('Recently Viewed'),
            ),
            Container(
              height: 400,
              child: Products(),
            )
          ],
        ));
  }
}

class ImageCarousel extends StatelessWidget {
  final List<String> imageAssetPaths = [
    'images/products/watch.jpg',
    'images/products/t-shirt_women.jpg',
    'images/products/blazer1.jpg',
    'images/products/crocs.jpg',
    'images/products/shoes1.jpg',
    'images/products/sunglasses.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 275,
        child: CarouselSlider.builder(
          itemCount: imageAssetPaths.length,
          itemBuilder: (BuildContext context, int index, int realIndex) {
            return Image.asset(
              imageAssetPaths[index],
              fit: BoxFit.cover,
            );
          },
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            viewportFraction: 2,
          ),
        ),
    );
  }
}
