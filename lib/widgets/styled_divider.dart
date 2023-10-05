import 'package:flutter/material.dart';

class StyledDivider extends StatelessWidget {
  final double scalePercentage;

  const StyledDivider({
    Key? key,
    required this.scalePercentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * scalePercentage,
      ),
      child: const Divider(color: Colors.black),
    );
  }
}
