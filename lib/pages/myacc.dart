import 'package:flutter/material.dart';
import 'cart.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController contactController = TextEditingController();

  bool isEditing = false;

  @override
  void initState() {
    super.initState();
    // Initialize the text controllers with user data (you can replace this with actual user data)
    nameController.text = "Abhinav";
    emailController.text = "abhinavn.ug22.cs@nitp.ac.in";
    contactController.text = "7975467050";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red, // Slightly darker red color
        title: Text(
          'My Account',
        ),
        actions: [
          InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Cart()),
            ),
            child: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                child: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                ),
                radius: 80,
                backgroundColor: Colors.red[100],
              ),
              SizedBox(
                height: 20,
              ),
              _buildTextField("Name", nameController),
              _buildTextField("Email", emailController),
              _buildTextField("Contact Number", contactController),
              SizedBox(height: 20),
              isEditing
                  ? ElevatedButton(
                      onPressed: () {
                        // Add logic to update user information here
                        setState(() {
                          isEditing = false;
                        });
                      },
                      child: Text("Save"),
                    )
                  : ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isEditing = true;
                        });
                      },
                      child: Text("Edit"),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
      ),
      enabled: isEditing,
    );
  }
}
