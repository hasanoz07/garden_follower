part of './loginPage_view.dart';
class EmailTextField extends StatelessWidget {
  const EmailTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: CommonItems.email,
        labelStyle: TextStyle(color: ColorItems.nouveau),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorItems.reptileGreen, width: ProjectSize.textfieldSideSize),
        ),
      ),
      cursorColor: ColorItems.reptileGreen,
    );
  }
}
class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: CommonItems.password,
        labelStyle: TextStyle(color: ColorItems.nouveau),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: ColorItems.reptileGreen, width: ProjectSize.textfieldSideSize),
        ),
      ),
      cursorColor: ColorItems.reptileGreen,
    );
  }
}
