import 'package:flutter/material.dart';
import 'package:healty_follower/product/const/color_items.dart';

class CustomOnboardPageButton extends StatelessWidget {
  CustomOnboardPageButton({
    Key? key,
    required this.function,
    required this.data,
  }) : super(key: key);

  void Function()? function;
  final String data;
  @override
  Widget build(
    BuildContext context,
  ) {
    return ElevatedButton(
      onPressed: function,
      child: Text(
        data,
        style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(primary: ColorItems.reptileGreen),
    );
  }
}
