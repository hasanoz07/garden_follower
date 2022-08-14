part of './loginPage_view.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      CommonItems.hello,
      style: Theme.of(context).textTheme.headline4?.copyWith(
            color: ColorItems.sargassoSea,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}
class SubtitleWidget extends StatelessWidget {
  const SubtitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      LoginItems.helloTextDown,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(color: ColorItems.property),
    );
  }
}