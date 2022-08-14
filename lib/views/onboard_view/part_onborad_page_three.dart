part of './onboard_view.dart';

class OnboardPageThree extends StatelessWidget {
   OnboardPageThree({
    Key? key,
  }) : super(key: key);

  void pushSignUpPageReplecament(BuildContext context) {
    Navigator.pushReplacement<void, void>(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => const LoginPageView(),
      ),
    );
  }
   final List<Color> color = [ColorItems.pixelWhite, ColorItems.pixelWhite, ColorItems.reptileGreen];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingItems.paddingHorizontal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          PngImage(name: ImageItems.onboardPageThere),
          CustomOnboardPageTitleText(text: OnboardPageItems.OnboardPageThereTitle),
          CustomOnboardPageSubtitleText(text: OnboardPageItems.OnboardPageThereSubtitle),
          OnboardPageMap(color: color,),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: ProjectSize.onboardPageButtonHeight,
              child: CustomOnboardPageButton(
                data: CommonItems.signUp,
                function: () {
                  pushSignUpPageReplecament(context);
                },
              ))
        ],
      ),
    );
  }
}
