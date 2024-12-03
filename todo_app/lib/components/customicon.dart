// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:todo_app/core/colors.dart';

class Customicon extends StatelessWidget {
  const Customicon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                color: AppColor.button,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.add, color: AppColor.secondaryBackground),
                onPressed: () {
                 
     
                },
              ),
            ),
            const SizedBox(width: 16),
            Container(
              decoration: const BoxDecoration(
                color: AppColor.button,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: const Icon(Icons.mic, color: AppColor.secondaryBackground),
                onPressed: () {
            
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
