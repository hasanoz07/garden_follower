part of './loginPage_view.dart';

class ForgotandRemeberRow extends StatefulWidget {
  ForgotandRemeberRow({
    Key? key,
  }) : super(key: key);

  @override
  State<ForgotandRemeberRow> createState() => _ForgotandRemeberRowState();
}

class _ForgotandRemeberRowState extends State<ForgotandRemeberRow> {
  double width2 = 20;

 bool? checkboxState=false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              width: width2,
              child: Checkbox(
                activeColor: ColorItems.reptileGreen,
                value: checkboxState,
                onChanged: (value) {
                  setState(() {
                     checkboxState=value;
                  });
                 
                },
              ),
            ),
            Padding(
              padding: PaddingItems.leftEight,
              child: Text(
                CommonItems.remember,
                style: Theme.of(context)
                    .textTheme
                    .subtitle2
                    ?.copyWith(color: ColorItems.nouveau, fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
        TextButton(
          style: TextButton.styleFrom(primary: ColorItems.nouveau),
          onPressed: () {},
          child: Text(
            CommonItems.forgotpass,
          ),
        )
      ],
    );
  }
}

class HaveAccountRow extends StatelessWidget {
  const HaveAccountRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(LoginItems.haveaccount),
        TextButton(
          style: TextButton.styleFrom(primary: ColorItems.reptileGreen),
          onPressed: () {},
          child: Text(CommonItems.signUp),
        ),
        SizedBox(
          height: 150,
        )
      ],
    );
  }
}
