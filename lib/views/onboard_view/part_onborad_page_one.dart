part of './onboard_view.dart';

class OnboardPageOne extends StatelessWidget {
  OnboardPageOne({
    Key? key,
    required this.pageController,
  }) : super(key: key);
  final PageController pageController;
  final List<Color> color = [ColorItems.reptileGreen, ColorItems.pixelWhite, ColorItems.pixelWhite];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingItems.paddingHorizontal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          PngImage(name: ImageItems.onboardPageOne),
          CustomOnboardPageTitleText(text: OnboardPageItems.OnboardPageOneTitle),
          CustomOnboardPageSubtitleText(
            text: OnboardPageItems.OnboardPageOneSubtitle,
          ),
          OnboardPageMap(color: color,),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: ProjectSize.onboardPageButtonHeight,
            child: CustomOnboardPageButton(
              data: CommonItems.next,
              function: () {
                pageController.nextPage(duration: DurationItems.durationLow, curve: Curves.bounceIn);
              },
            ),
          )
        ],
      ),
    );
  }
}

