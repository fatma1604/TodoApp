import 'package:flutter/material.dart';

class My_Listitle extends StatelessWidget {
  const My_Listitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('Home', style: TextStyle(color: Colors.blue)),
          tileColor: Colors.blue.shade100,
          trailing: const Icon(Icons.home, color: Colors.blue),
          onTap: () {
            print('Home clicked');
          },
        ),
        const SizedBox(height: 10),
        ListTile(
          title: const Text('Profile', style: TextStyle(color: Colors.green)),
          tileColor: Colors.green.shade100,
          trailing: const Icon(Icons.account_circle, color: Colors.green),
          onTap: () {
            print('Profile clicked');
          },
        ),
        const SizedBox(height: 10),
        ListTile(
          title: const Text('Notifications',
              style: TextStyle(color: Colors.orange)),
          tileColor: Colors.orange.shade100,
          trailing: const Icon(Icons.notifications, color: Colors.orange),
          onTap: () {
            print('Notifications clicked');
          },
        ),
        const SizedBox(height: 10),
        ListTile(
          title: const Text('Settings', style: TextStyle(color: Colors.purple)),
          tileColor: Colors.purple.shade100,
          trailing: const Icon(Icons.settings, color: Colors.purple),
          onTap: () {
            print('Settings clicked');
          },
        ),
        const SizedBox(height: 10),
        ListTile(
          title: const Text('Help', style: TextStyle(color: Colors.red)),
          tileColor: Colors.red.shade100,
          trailing: const Icon(Icons.help, color: Colors.red),
          onTap: () {
            print('Help clicked');
          },
        ),
      ],
    );
  }
}
