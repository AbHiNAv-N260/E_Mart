import 'package:flutter/material.dart';
import 'package:e_mart/pages/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  String email = '';
  String password = '';
  String emailError = '';
  String passwordError = '';

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadSavedData();
  }

  _loadSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name') ?? '';
      email = prefs.getString('email') ?? '';
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _continueButtonPressed() async {
    setState(() {
      emailError = '';
      passwordError = '';

      name = nameController.text;
      email = emailController.text;
      password = passwordController.text;

      // Email validation
      if (!email.endsWith('@gmail.com')) {
        emailError = 'Invalid email format';
        return;
      }

      // Password validation
      if (password.length < 8 ||
          !password.contains(RegExp(r'[A-Z]')) ||
          !password.contains(RegExp(r'[a-z]')) ||
          !password.contains(RegExp(r'[0-9]')) ||
          !password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
        passwordError =
            'Password must be at least 8 characters and include uppercase, lowercase, numbers, and symbols.';
        return;
      }

      // Save name and email to shared preferences
      _saveData();

      // Navigate to home page and replace the current route
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  _saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('name', name);
    prefs.setString('email', email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.red[100],
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                errorText: emailError.isNotEmpty ? emailError : null,
              ),
            ),
            SizedBox(height: 16),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            Text(
              passwordError,
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: _continueButtonPressed,
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              ),
              child: Text(
                'Continue',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
