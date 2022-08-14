import 'package:flutter/material.dart';
import 'package:healty_follower/product/button/custom_onborad_page_button.dart';
import 'package:healty_follower/product/const/color_items.dart';
import 'package:healty_follower/product/const/login_page_items.dart';
import 'package:healty_follower/product/const/padding_items.dart';
import 'package:healty_follower/product/const/project_common_items.dart';
import 'package:healty_follower/product/const/project_size.dart';
import 'package:healty_follower/views/home_page_view.dart';
part 'part_text_widget.dart';
part 'part_textfield_widget.dart';
part 'part_row_widget.dart';
class LoginPageView extends StatelessWidget {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Padding(
        padding: PaddingItems.paddingHorizontal,
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height - 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleWidget(),
                SubtitleWidget(),
                EmailTextField(),
                PasswordTextField(),
                ForgotandRemeberRow(),
                SizedBox(
                    height: ProjectSize.onboardPageButtonHeight,
                    width: MediaQuery.of(context).size.width,
                    child: CustomOnboardPageButton(function: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePageView(),));}, data: LoginItems.login)),
                HaveAccountRow()
              ],
            ),
          ),
        ),
      ),
    );
  }
}





