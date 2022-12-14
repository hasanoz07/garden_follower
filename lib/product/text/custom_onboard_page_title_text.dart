import 'package:flutter/material.dart';

class CustomOnboardPageTitleText extends StatelessWidget {
   CustomOnboardPageTitleText({
    Key? key, required this.text,
  }) : super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline6?.copyWith(color: Color(0xFF36455A)),
    );
  }
}