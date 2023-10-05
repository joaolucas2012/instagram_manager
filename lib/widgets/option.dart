import 'package:flutter/material.dart';
import 'package:instagram_manager/widgets/styled_text.dart';

class Option extends StatelessWidget {
  final String text;

  const Option({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.03),
      width: MediaQuery.of(context).size.width * 0.35,
      height: MediaQuery.of(context).size.height * 0.02,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: StyledText(text: text),
      ),
    );
  }
}
