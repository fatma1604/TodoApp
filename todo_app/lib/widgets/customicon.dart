import 'package:flutter/material.dart';

class Customicon extends StatelessWidget {
  const Customicon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(Icons.add), // Plus icon
            onPressed: () {
              // Handle the plus button press
              print('Plus button pressed');
            },
          ),
          IconButton(
            icon: Icon(Icons.mic), // Microphone (or speaker) icon
            onPressed: () {
              // Handle the mic button press
              print('Microphone button pressed');
            },
          ),
        ],
      ),
    );
  }
}
