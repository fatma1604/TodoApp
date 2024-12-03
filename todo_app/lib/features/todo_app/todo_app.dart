// ignore_for_file: unused_local_variable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:todo_app/components/title_widget.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
      body: const Column(
        children: [
          TitleWidget(),
        ],
      ),
    );
  }
}
