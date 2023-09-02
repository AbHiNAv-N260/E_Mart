import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        backgroundColor: Colors.red, // Red app bar
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xFFFFF0F0), // Slight red background
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to Our Shopping App!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'About Us',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Discover the World of Fashion with Us',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'At our shopping app, we are dedicated to providing you with a curated selection of the latest clothing, accessories, and fashion brands. Our mission is to make your shopping experience enjoyable and hassle-free.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Key Features',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Explore our app and take advantage of these features:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Browse and shop the latest fashion trends'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Discover clothing and accessories from top brands'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Effortlessly filter and search for products'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Secure and convenient checkout process'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Track your orders and delivery status'),
              ),
              ListTile(
                leading: Icon(Icons.check),
                title: Text('Stay updated with exclusive offers and promotions'),
              ),
              SizedBox(height: 16),
              Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'We are here to assist you. If you have any questions, feedback, or require assistance, please don\'t hesitate to reach out to us at:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'Email: emart@gamil.com',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Phone: 9282182718',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
