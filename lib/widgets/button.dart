import 'package:flutter/material.dart';
import 'package:instagram_manager/widgets/styled_text.dart';

class Button extends StatelessWidget {
  final String title;

  const Button({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.pink[400]),
        fixedSize: const MaterialStatePropertyAll(
          Size.fromWidth(180),
        ),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.add,
            color: Colors.white,
          ),
          StyledText(
            text: title,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
