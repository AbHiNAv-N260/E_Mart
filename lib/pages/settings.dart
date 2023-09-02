import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isNotificationsEnabled = true;
  bool isLocationServicesEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.red, // Red app bar
      ),
      body: Container(
        color: Color(0xFFFFF0F0), // Slight red background
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'App Settings',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              title: Text('Notifications'),
              trailing: Switch(
                value: isNotificationsEnabled,
                onChanged: (bool newValue) {
                  setState(() {
                    isNotificationsEnabled = newValue;
                  });
                  // You can handle the logic to save the notification setting here
                },
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Location Services'),
              trailing: Switch(
                value: isLocationServicesEnabled,
                onChanged: (bool newValue) {
                  setState(() {
                    isLocationServicesEnabled = newValue;
                  });
                  // You can handle the logic to save the location services setting here
                },
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Account'),
              subtitle: Text('Manage your account settings'),
              onTap: () {
                // Navigate to the account settings page
              },
            ),
            Divider(),
            ListTile(
              title: Text('Privacy Policy'),
              onTap: () {
                // Open the privacy policy page
              },
            ),
            Divider(),
            ListTile(
              title: Text('Terms of Service'),
              onTap: () {
                // Open the terms of service page
              },
            ),
            Divider(),
            ListTile(
              title: Text('Logout'),
              onTap: () {
                // Handle logout
              },
            ),
          ],
        ),
      ),
    );
  }
}
