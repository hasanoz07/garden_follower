import 'package:flutter/material.dart';
import 'package:healty_follower/product/const/project_size.dart';

class OnboardPageMap extends StatelessWidget {
  OnboardPageMap({
    Key? key, required this.color,
  }) : super(key: key);
final List<Color> color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / ProjectSize.mapWidthandHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          mapItem(color[0]),
          mapItem(color[1]),
          mapItem(color[2]),

        ],
      ),
    );
  }

  Container mapItem(Color? itemColor) {
    return Container(
      width: ProjectSize.mapWidthandHeight,
      height: ProjectSize.mapWidthandHeight,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: itemColor),
    );
  }
}
