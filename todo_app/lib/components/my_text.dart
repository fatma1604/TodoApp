import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const MyText({
    super.key,
    required this.text,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    List<String> lines = text.split('\n');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lines[0],
          style: style.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          lines.length > 1 ? lines[1] : "",
          style: style.copyWith(
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
