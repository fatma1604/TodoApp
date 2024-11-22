import 'package:flutter/material.dart';

class My_Listitle extends StatelessWidget {
  const My_Listitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('Home', style: TextStyle(color: Colors.blue)),
          tileColor: Colors.blue.shade100,
          trailing: Icon(Icons.home, color: Colors.blue),
          onTap: () {
            // Add functionality for Home onTap
            print('Home clicked');
          },
        ),
        SizedBox(height: 10), // Add space between ListTile items
        ListTile(
          title: Text('Profile', style: TextStyle(color: Colors.green)),
          tileColor: Colors.green.shade100,
          trailing: Icon(Icons.account_circle, color: Colors.green),
          onTap: () {
            // Add functionality for Profile onTap
            print('Profile clicked');
          },
        ),
        SizedBox(height: 10), // Add space between ListTile items
        ListTile(
          title: Text('Notifications', style: TextStyle(color: Colors.orange)),
          tileColor: Colors.orange.shade100,
          trailing: Icon(Icons.notifications, color: Colors.orange),
          onTap: () {
            // Add functionality for Notifications onTap
            print('Notifications clicked');
          },
        ),
        SizedBox(height: 10), // Add space between ListTile items
        ListTile(
          title: Text('Settings', style: TextStyle(color: Colors.purple)),
          tileColor: Colors.purple.shade100,
          trailing: Icon(Icons.settings, color: Colors.purple),
          onTap: () {
            // Add functionality for Settings onTap
            print('Settings clicked');
          },
        ),
        SizedBox(height: 10), // Add space between ListTile items
        ListTile(
          title: Text('Help', style: TextStyle(color: Colors.red)),
          tileColor: Colors.red.shade100,
          trailing: Icon(Icons.help, color: Colors.red),
          onTap: () {
            // Add functionality for Help onTap
            print('Help clicked');
          },
        ),
      ],
    );
  }
}
