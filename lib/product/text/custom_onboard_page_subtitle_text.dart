import 'package:flutter/material.dart';

class CustomOnboardPageSubtitleText extends StatelessWidget {
   CustomOnboardPageSubtitleText({
    Key? key, required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.subtitle2?.copyWith(
            fontWeight: FontWeight.w300,
            color: Color(0xFF6A6F7D),
          ),
    );
  }
}