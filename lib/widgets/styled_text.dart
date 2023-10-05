import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;
  final Color? color;

  const StyledText({
    Key? key,
    required this.text,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        color: color,
      ),
      textAlign: TextAlign.left,
    );
  }
}
