part of './onboard_view.dart';

class OnboardPageTwo extends StatelessWidget {
  OnboardPageTwo({
    Key? key,
    required this.pageController,
  }) : super(key: key);
  final PageController pageController;
  final List<Color> color = [ColorItems.pixelWhite, ColorItems.reptileGreen, ColorItems.pixelWhite];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingItems.paddingHorizontal,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          PngImage(name: ImageItems.onboardPageTwo),
          CustomOnboardPageTitleText(text: OnboardPageItems.OnboardPageTwoTitle),
          CustomOnboardPageSubtitleText(text: OnboardPageItems.OnboardPageTwoSubtitle),
          OnboardPageMap(
            color: color,
          ),
          SizedBox(
              width: MediaQuery.of(context).size.width,
              height: ProjectSize.onboardPageButtonHeight,
              child: CustomOnboardPageButton(
                  function: () {
                    pageController.nextPage(duration: DurationItems.durationLow, curve: Curves.bounceIn);
                  },
                  data: CommonItems.next))
        ],
      ),
    );
  }
}
