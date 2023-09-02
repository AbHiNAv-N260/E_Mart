import 'package:e_mart/pages/favo.dart';
import 'package:flutter/material.dart';
import 'package:e_mart/pages/cart.dart';
import './pages/home.dart';
import './pages/login.dart';
import 'package:e_mart/pages/favo.dart';

void main() async {
  runApp(MaterialApp(
    routes: {
      '/home': (context) => HomePage(),
      '/cart': (context) => Cart(),
      '/login': (context) => LoginPage(),
      '/fav': (context) => Liked(),
    },
    home: Logo(),
    debugShowCheckedModeBanner: false,
  ));
}

class Logo extends StatefulWidget {
  const Logo({super.key});

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacement((context),
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.asset(
          'images/loadingpage.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
