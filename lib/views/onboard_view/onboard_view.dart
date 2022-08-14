
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healty_follower/core/png_image.dart';
import 'package:healty_follower/product/button/custom_onborad_page_button.dart';
import 'package:healty_follower/product/const/color_items.dart';
import 'package:healty_follower/product/const/duration_items.dart';
import 'package:healty_follower/product/const/image_items.dart';
import 'package:healty_follower/product/const/onboardPageItems.dart';
import 'package:healty_follower/product/const/padding_items.dart';
import 'package:healty_follower/product/const/project_common_items.dart';
import 'package:healty_follower/product/const/project_size.dart';
import 'package:healty_follower/product/text/custom_onboard_page_subtitle_text.dart';
import 'package:healty_follower/product/text/custom_onboard_page_title_text.dart';
import 'package:healty_follower/views/login_view/loginPage_view.dart';
import 'package:healty_follower/views/onboard_view/onboard_map_widget.dart';
part 'part_onborad_page_one.dart';
part 'part_onborad_page_three.dart';
part 'part_onborad_page_two.dart';

class OnboardView extends StatefulWidget {
  OnboardView({Key? key}) : super(key: key);

  @override
  State<OnboardView> createState() => _OnboardViewState();
}

class _OnboardViewState extends State<OnboardView> {
  final PageController _pageController = PageController(viewportFraction: 1);
  int _currentPageIndex = 1;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          _updatePageIndex(index);
        },
        children: [
          OnboardPageOne(pageController: _pageController),
          OnboardPageTwo(pageController: _pageController),
          OnboardPageThree()
        ],
      ),
    );
  }
}
